using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.U2D;
#if UNITY_EDITOR
using System.Reflection;
#endif

namespace Tools
{
    //// General Time/Code Saving Functions
    public static class General
    {
        //TODO (GC-2678) - move to class that contains data variables
        public static LayerMask GROUNDED_LAYER = LayerMask.GetMask("Ground");
        public static int GROUNDED_LAYER_INT = LayerMask.NameToLayer("Ground");

        /// <summary>
        /// Provides a number within the index, if it is over max it overflows to min, if it is below min it overflows to max
        /// </summary>
        /// <param name="index">This is the current index that the function is attempting to access</param>
        /// <param name="maxIndex">This should be list length -1</param>
        /// <param name="minIndex">This should be 0 or whatever the minimum length is - defaults to 0</param>
        /// <returns></returns>
        public static int WrapIndex(int index, int maxIndex, int minIndex = 0)
        {
            // Item number is below first item, roll over to last item
            if (index < minIndex)
                index = maxIndex;

            // Item number is beyond last item, roll over to first item
            if (index > maxIndex)
                index = minIndex;

            return index;
        }

        /// <summary>
        /// Unwraps an angle that maybe more than 360 or less than 0 to a value thats between 0 and 360
        /// </summary>
        /// <param name="angle">Angle we want to unwrap</param>
        /// <returns>Angle thats between 0 and 360</returns>
        public static float UnwrapAngle(float angle)
        {
            if (angle < 0.0f || angle >= 360.0f)
            {
                angle = angle % 360.0f;
                angle += angle < 0.0f ? 360.0f : 0.0f;
            }

            return angle;
        }

        /// <summary>
        /// Flips a coin
        /// </summary>
        /// <returns>Randomly true or false</returns>
        public static bool RandomBool()
        {
            return (UnityEngine.Random.value >= 0.5);
        }

        /// <summary>
        /// Returns a random point inside of the provided box collider
        /// </summary>
        /// <param name="boxCollider">the box colider to have a point provided within</param>
        /// <returns>Vector 3 that is within the provided box collider</returns>
        public static Vector3 GetRandomPointInsideCollider(BoxCollider boxCollider)
        {
            Vector3 extents = boxCollider.size / 2f;
            Vector3 point = new Vector3(
                UnityEngine.Random.Range(-extents.x, extents.x),
                UnityEngine.Random.Range(-extents.y, extents.y),
                UnityEngine.Random.Range(-extents.z, extents.z)
            ) + boxCollider.center;
            return boxCollider.transform.TransformPoint(point);
        }


        //TODO GC-3046 may want other variations of this ^ for getting point on Z axis. For Paws Modes especially, the camera looks at something on the Z plane generally so would prefer to shoot rays forward/backward rather than up and down. 
        /// <summary>
        /// Returns a grounded point for a plot from a cast point.
        /// </summary>
        /// <returns></returns>
        public static Vector3 GetGroundedPoint(Vector3 castPoint, float maxRayDistance = 50f)
        {
            //set up teleport pos 
            Vector3 groundedPoint = castPoint;
            //add 1 unit offset on y for cast point - this allows Points & objects with Y positions that are the same as ground to easily find the ground. 
            castPoint += Vector3.up;
            //set up ray 
            RaycastHit hit;

            //Does the ray intersect with the ground? Shoot down first
            if (Physics.Raycast(castPoint, Vector3.down, out hit, maxRayDistance, GROUNDED_LAYER))
            {
                groundedPoint = hit.point;
            }
            //Now check above us
            else if (Physics.Raycast(castPoint, Vector3.up, out hit, maxRayDistance, GROUNDED_LAYER))
            {
                groundedPoint = hit.point;
            }
            //Didn't hit something...
            else
            {
                throw new Exception(string.Format("Tried to get grounded point from ({0}) but didn't hit anything! Try moving your Cast point object on it's Y axis, you may be inside the desired collider.", castPoint));
            }

            return groundedPoint;
        }
    }

    //// Vector Math
    public static class Vector
    {
        // Efficient vector distance calculation
        public static float CheapDistance(Vector3 a, Vector3 b) => (a - b).sqrMagnitude;
    }

    //// UI Transforms
    public static class UI
    {
        // Gets camera-space canvas position of a world point
        // (Should be applied to [rect].anchoredPosition)
        public static Vector2 RectPositionFromWorldPoint(Canvas canvas, RectTransform canvasRect, Camera camera, RectTransform rect, Vector3 worldPoint)
        {
            if (!camera)
                camera = Camera.main;

            // Get half of screen width and height, taking scaling into account
            int screenWidthFromCenter = (int)(Screen.width / canvas.scaleFactor) / 2;
            int screenHeightFromCenter = (int)(Screen.height / canvas.scaleFactor) / 2;

            // "Convert" this value to bottom left of parent (i.e. pretend that anchor = 0,0)
            Vector2 bottomLeftOfParent = new Vector2((-rect.anchorMax.x * 2) * screenWidthFromCenter, (-rect.anchorMax.y * 2) * screenHeightFromCenter);

            return bottomLeftOfParent + (camera.WorldToViewportPoint(worldPoint) * canvasRect.sizeDelta);
        }
    }
}


//// Extension Methods
public static class Extensions
{
    #region Vector3
    // Grabs 2/3 axes of a Vector3
    public static Vector3 xy(this Vector3 v0) => new Vector3(v0.x, v0.y, 0);
    public static Vector3 xz(this Vector3 v0) => new Vector3(v0.x, 0, v0.z);
    public static Vector3 yz(this Vector3 v0) => new Vector3(0, v0.y, v0.z);

    // Non-destructively returns one axis of Vector3 replaced w/ provided float
    public static Vector3 substituteX(this Vector3 v0, float newX) => new Vector3(newX, v0.y, v0.z);
    public static Vector3 substituteY(this Vector3 v0, float newY) => new Vector3(v0.x, newY, v0.z);
    public static Vector3 substituteZ(this Vector3 v0, float newZ) => new Vector3(v0.x, v0.y, newZ);

    // gives a more precise floating point string conversion of the vector
    public static string PreciseToString(this Vector2 v) => $"({v.x} {v.y})";
    public static string PreciseToString(this Vector3 v) => $"({v.x} {v.y} {v.z})";
    public static string PreciseToString(this Vector4 v) => $"({v.x} {v.y} {v.z} {v.w})";
    #endregion

    #region CharacterController

    /// <summary>
    /// Gives capsule parameters in local space that can be used for CapsuleCast
    /// </summary>
    /// <param name="ctrl"></param>
    /// <param name="p1">Bottom capsule point</param>
    /// <param name="p2">Top capsule point</param>
    /// <param name="radius">Radius of the capsule</param>
    /// <param name="includeSkinWidth">true if you want to include the skin width of the CharacterController with the capsule parameters</param>
    public static void GetLocalCapsuleParameters(this CharacterController ctrl, out Vector3 p1, out Vector3 p2,
        out float radius, bool includeSkinWidth = false)
    {
        radius = ctrl.radius;
        var height = ctrl.height;
        radius += includeSkinWidth ? ctrl.skinWidth : 0f;
        height += includeSkinWidth ? ctrl.skinWidth * 2f : 0f;

        // from top to bottom of the capsule
        var totalHeight = Mathf.Max(radius * 2f, height);
        // from the center of the top sphere to the center of the bottom sphere
        var innerHeight = totalHeight - (radius * 2f);

        p1 = ctrl.center - (innerHeight * 0.5f * Vector3.up);
        p2 = p1 + Vector3.up * innerHeight;
    }


    /// <summary>
    /// Gives capsule parameters in world space that can be used for CapsuleCast
    /// </summary>
    /// <param name="ctrl"></param>
    /// <param name="p1">Bottom capsule point in world space</param>
    /// <param name="p2">Top capsule point in world space</param>
    /// <param name="radius">World space radius of the capsule</param>
    /// <param name="includeSkinWidth">true if you want to include the skin width of the CharacterController with the capsule parameters</param>
    public static void GetWorldCapsuleParameters(this CharacterController ctrl, out Vector3 p1, out Vector3 p2,
        out float radius, bool includeSkinWidth = false)
    {
        // we don't include skin width with local space parameters as the skin width gets applied to its final world
        //  space transformation
        ctrl.GetLocalCapsuleParameters(out p1, out p2, out radius, includeSkinWidth: false);

        var xform = ctrl.transform;
        var scale = xform.lossyScale;

        // upon observation, radius is scaled only by the maximum of the X/Z components; skin width is not affected by
        //  this scale and is only applied after world space transformation
        radius *= Mathf.Max(scale.x, scale.z);
        radius += includeSkinWidth ? ctrl.skinWidth : 0f;

        var center = (p1 + p2) * 0.5f;
        var worldCenter = xform.TransformPoint(center);

        // upon observation, height is scaled by the Y component; skin width is not affected by this scale and is only
        //  applied after world space transformation
        var height = ctrl.height * scale.y;
        height += includeSkinWidth ? ctrl.skinWidth * 2f : 0f;

        // if our final height is bigger than our radius, our p1 and p2 points need to be offset from each other
        if (height > radius * 2f)
        {
            float innerHeight = height - (radius * 2f);

            // recalculate p1/p2 with the new inner height
            p1 = worldCenter - (innerHeight * 0.5f * Vector3.up);
            p2 = p1 + (Vector3.up * innerHeight);
        }
        // otherwise, p1/p2 are the same points
        else
        {
            p1 = p2 = worldCenter;
        }
    }
    #endregion

    #region Animation Curve
    //NOTE: AnimationCurve is a cubic hermite spline
    // https://en.wikipedia.org/wiki/Cubic_Hermite_spline
    // p(t) = (2t^3 - 3t^2 + 1)p0 + (t^3 - 2t^2 + t)outTan + (-2t^3 + 3t^2)p1 + (t^3 - t^2)inTan
    //         i00                   i10                      i01                i11

    // helper to calculate integral cofactors of the hermite cubic spline
    static float CalculateAnimationCurveIntegralCofactors(float t, ref Keyframe begKey, ref Keyframe endKey)
    {
        // precalc some common values
        float t2 = t * t;
        float t3 = t2 * t;
        float t4 = t2 * t2;
        const float third = 1.0f / 3.0f;
        const float twoThird = 2.0f * third;

        float scale = endKey.time - begKey.time;
        float outTanScaled = begKey.outTangent * scale;
        float inTanScaled = endKey.inTangent * scale;

        // calculate cofactors
        float i00 = ((0.5f * t4) - t3 + t) * begKey.value; // integral of (2t^3 - 3t^2 + 1)    => (1/2*t^4 - t^3 + t)
        float i10 = ((0.25f * t4) - (twoThird * t3) + (0.5f * t2)) * outTanScaled; // integral of (t^3 - 2t^2 + t)     => (1/4*t^4 - 2/3*t^3 + 1/2*t^2)
        float i01 = ((-0.5f * t4) + t3) * endKey.value; // integral of (-2t^3 + 3t^2)       => (-1/2*t^4 + t^3)
        float i11 = ((0.25f * t4) - (third * t3)) * inTanScaled;  // integral of (t^3 - t^2)          => (1/4*t^4 - 1/3*t^3)

        return i00 + i10 + i01 + i11;
    }

    /// <summary>
    /// Calculates integral between <paramref name="beginT"/> and <paramref name="endT"/>
    /// </summary>
    /// <param name="beginT">The beginning of the integral to calculate</param>
    /// <param name="endT">The ending of the integral to calculate</param>
    /// <returns></returns>
    public static float Integrate(this AnimationCurve curve, float beginT = -float.MaxValue, float endT = float.MaxValue)
    {
        float sum = 0.0f;
        //float otherSum = 0.0f;
        for (int i = 1; i < curve.length; i++)
        {
            ref var begKey = ref curve.keys[i - 1];
            ref var endKey = ref curve.keys[i];

            // intersection test
            if (begKey.time <= endT && endKey.time >= beginT)
            {
                // get the correct begin/end T values for this interval
                float intervalBeginT = Mathf.Max(begKey.time, beginT);
                float intervalEndT = Mathf.Min(endKey.time, endT);

                // This version doesn't work correctly; leaving it here for a learning opportunity
                // It seems accurate for only intervals 0 and 1, but is incorrect for anything else
                /*
                // calculate beginning/ending integrals
                var begVal = CalculateAnimationCurveIntegralCofactors(intervalBeginT, ref begKey, ref endKey);
                var endVal = CalculateAnimationCurveIntegralCofactors(intervalEndT, ref begKey, ref endKey);

                // add to sum
                otherSum += endVal - begVal;
                */

                // pulled from hermite_cubic_integrate @ https://people.math.sc.edu/Burkardt/c_src/hermite_cubic/hermite_cubic.c
                float x1 = begKey.time;
                float x2 = endKey.time;
                float f1 = begKey.value;
                float f2 = endKey.value;
                float d1 = begKey.outTangent;
                float d2 = endKey.inTangent;
                float a = intervalBeginT;
                float b = intervalEndT;
                float h = x2 - x1;

                float ta1 = (a - x1) / h;
                float ta2 = (x2 - a) / h;
                float tb1 = (b - x1) / h;
                float tb2 = (x2 - b) / h;

                float ua1 = ta1 * ta1 * ta1;
                float phia1 = ua1 * (2.0f - ta1);
                float psia1 = ua1 * (3.0f * ta1 - 4.0f);

                float ua2 = ta2 * ta2 * ta2;
                float phia2 = ua2 * (2.0f - ta2);
                float psia2 = -ua2 * (3.0f * ta2 - 4.0f);

                float ub1 = tb1 * tb1 * tb1;
                float phib1 = ub1 * (2.0f - tb1);
                float psib1 = ub1 * (3.0f * tb1 - 4.0f);

                float ub2 = tb2 * tb2 * tb2;
                float phib2 = ub2 * (2.0f - tb2);
                float psib2 = -ub2 * (3.0f * tb2 - 4.0f);

                float fterm = f1 * (phia2 - phib2) + f2 * (phib1 - phia1);
                float dterm = (d1 * (psia2 - psib2) + d2 * (psib1 - psia1)) * (h / 6.0f);

                float q = 0.5f * h * (fterm + dterm);
                sum += q;
            }
            // we've moved out of the range, we can stop
            else if (begKey.time > endT)
            {
                break;
            }
        }

        //Debug.Log($"correctSum:{sum} mySum:{otherSum}");

        return sum;
    }

    /// <summary>
    /// Returns an approximate differentiation at time of <see cref="t"/>
    /// </summary>
    /// <param name="curve"></param>
    /// <param name="t">Time value to evaluate the differentiated value from the curve</param>
    /// <param name="delta">The delta we want to use to construct our slope from</param>
    /// <param name="ignoreWrap">If we want to ignore wrapping behaviour of the curve</param>
    /// <returns></returns>
    public static float ApproxDifferentiate(this AnimationCurve curve, float t, float delta = 0.000001f, bool ignoreWrap = false)
    {
        var x1 = t - delta;
        x1 = ignoreWrap ? Mathf.Max(curve.keys[0].time, x1) : x1;
        var x2 = t + delta;
        x2 = ignoreWrap ? Mathf.Min(curve.keys[curve.length - 1].time, x2) : x2;

        var y1 = ignoreWrap ? curve.EvaluateIgnoreWrap(x1) : curve.Evaluate(x1);
        var y2 = ignoreWrap ? curve.EvaluateIgnoreWrap(x2) : curve.Evaluate(x2);

        return (y2 - y1) / (x2 - x1);
    }

    /// <summary>
    /// Calculates derivative of the curve at specified time value
    /// </summary>
    /// <param name="t">Time value of where we want to get the derivative of the curve</param>
    /// <param name="ignoreWrap">Ignore the wrapping mode and assume curve is continuous</param>
    /// <returns>Differntiated curve value at interval t</returns>
    public static float Differentiate(this AnimationCurve curve, float t, bool ignoreWrap = false)
    {
        Debug.LogError("CURRENTLY RETURNS INCORRECT DERIVATIVES, TRY ApproxDifferentiate FOR NOW");
        var keys = curve.keys;

        // check if our t value is out of range; we need to setup accordingly
        //  for the wrap modes of the curve
        float firstTime = keys[0].time;
        float lastTime = keys[curve.length - 1].time;
        float timeRange = lastTime - firstTime;

        // if we're out of range, reset t according to wrap mode, or mark accordingly
        //  if we're clamped as that means a slope of 0
        bool clamped = false;
        bool mirrored = false;
        if (!ignoreWrap && (t < firstTime || t > lastTime))
        {
            var wrapMode = t < firstTime ? curve.preWrapMode : curve.postWrapMode;

            if (wrapMode == WrapMode.Clamp || wrapMode == WrapMode.ClampForever)
            {
                clamped = true;
            }
            else if (wrapMode == WrapMode.Loop)
            {
                // get t within our range
                t %= timeRange;
                t += t < 0f ? timeRange : 0f;
            }
            else if (wrapMode == WrapMode.PingPong)
            {
                // shift t
                t -= firstTime;

                // get our interval
                int interval = Mathf.Abs(Mathf.FloorToInt(t / timeRange));

                // get t within our range
                t %= timeRange;
                t += t < 0f ? timeRange : 0f;

                // if our interval is odd, that means we need to mirror t and our slope at the end
                if ((interval % 2) == 1)
                {
                    t = timeRange - t;
                    mirrored = true;
                }

                // shift t back up
                t += firstTime;
            }
            else
            {
                throw new System.InvalidOperationException($"unhandled WrapMode {wrapMode}");
            }
        }

        // calculate the derivative
        var slope = 0.0f;
        if (!clamped)
        {
            float beginInterval = 0.0f;
            float endInterval = 0.0f;
            float beginValue = 0.0f;
            float endValue = 0.0f;
            float outTangent = 0.0f;    // out tangent of the beginning value
            float inTangent = 0.0f;     // in tangent of the ending value

            if (ignoreWrap && t < firstTime)
            {
                ref var beginKey = ref keys[0];
                ref var endKey = ref keys[1];

                beginInterval = beginKey.time;
                endInterval = endKey.time;
                beginValue = beginKey.value;
                endValue = endKey.value;
                outTangent = beginKey.outTangent;
                inTangent = endKey.inTangent;
            }
            else if (ignoreWrap && t > lastTime)
            {
                ref var beginKey = ref keys[keys.Length - 2];
                ref var endKey = ref keys[keys.Length - 1];

                beginInterval = beginKey.time;
                endInterval = endKey.time;
                beginValue = beginKey.value;
                endValue = endKey.value;
                outTangent = beginKey.outTangent;
                inTangent = endKey.inTangent;
            }
            else
            {
                // find the key of interest
                for (int i = 1; i < keys.Length; i++)
                {
                    ref var beginKey = ref keys[i - 1];
                    ref var endKey = ref keys[i];

                    beginInterval = beginKey.time;
                    endInterval = endKey.time;

                    if (t >= beginInterval && t <= endInterval)
                    {
                        beginValue = beginKey.value;
                        endValue = endKey.value;
                        outTangent = beginKey.outTangent;
                        inTangent = endKey.inTangent;
                        break;
                    }
                }
            }

            //t = Mathfx.NormalizeValueFromRange(t, beginInterval, endInterval);
            //TODO (GC-2788) i think this scale is messing up the derivative calculation?
            float scale = endInterval - beginInterval;
            float t2 = t * t;
            float d00 = (6.0f * t2) - (6.0f * t);        // derivative of (2t^3 - 3t^2 + 1) => (6t^2 - 6t)
            float d10 = (3.0f * t2) - (4.0f * t) + 1;    // derivative of (t^3 - 2t^2 + t) => (3t^2 - 4t + 1)
            float d01 = (-6.0f * t2) + (6.0f * t);       // derivative of (-2t^3 + 3t^2) => (-6t^2 + 6t)
            float d11 = (3.0f * t2) - (2.0f * t);        // derivative of (t^3 - t^2) => (3t^2 - 2t)

            // calculate derivative
            slope = (d00 * beginValue) + (d10 * scale * outTangent) + (d01 * endValue) + (d11 * scale * inTangent);

            // this was a mirrored t value (e.g. PingPong wrap mode in a reversed curve interval)
            //  so we should invert the slope
            if (mirrored)
            {
                slope = 1f / slope;
            }
        }

        return slope;
    }

    /// <summary>
    /// Performs similarly to Evaluate but ignores the wrapping behaviour before/after the curve and assumes they're continuous
    /// </summary>
    /// <param name="curve"></param>
    /// <param name="t">Time value we want to evaluate the value from the curve</param>
    /// <returns></returns>
    public static float EvaluateIgnoreWrap(this AnimationCurve curve, float t)
    {
        var keys = curve.keys;
        float firstTime = keys[0].time;
        float lastTime = keys[curve.length - 1].time;

        float beginInterval = 0.0f;
        float endInterval = 0.0f;
        float beginValue = 0.0f;
        float endValue = 0.0f;
        float outTangent = 0.0f;    // out tangent of the beginning value
        float inTangent = 0.0f;     // in tangent of the ending value

        if (t < firstTime)
        {
            ref var beginKey = ref keys[0];
            ref var endKey = ref keys[1];

            beginInterval = beginKey.time;
            endInterval = endKey.time;
            beginValue = beginKey.value;
            endValue = endKey.value;
            outTangent = beginKey.outTangent;
            inTangent = endKey.inTangent;
        }
        else if (t > lastTime)
        {
            ref var beginKey = ref keys[keys.Length - 2];
            ref var endKey = ref keys[keys.Length - 1];

            beginInterval = beginKey.time;
            endInterval = endKey.time;
            beginValue = beginKey.value;
            endValue = endKey.value;
            outTangent = beginKey.outTangent;
            inTangent = endKey.inTangent;
        }
        else
        {
            // find the key of interest
            for (int i = 1; i < keys.Length; i++)
            {
                ref var beginKey = ref keys[i - 1];
                ref var endKey = ref keys[i];

                beginInterval = beginKey.time;
                endInterval = endKey.time;

                if (t >= beginInterval && t <= endInterval)
                {
                    beginValue = beginKey.value;
                    endValue = endKey.value;
                    outTangent = beginKey.outTangent;
                    inTangent = endKey.inTangent;
                    break;
                }
            }
        }

        //t = Mathfx.NormalizeValueFromRange(t, beginInterval, endInterval);
        float scale = endInterval - beginInterval;

        float t2 = t * t;
        float t3 = t2 * t;
        float h00 = (2f * t3) - (3f * t2) + 1;
        float h10 = t3 - (2f * t2) + t;
        float h01 = (-2f * t3) + (3f * t2);
        float h11 = t3 - t2;

        // perform interpolation
        float val = (h00 * beginValue) + (h10 * scale * outTangent) + (h01 * endValue) + (h11 * scale * inTangent);

        return val;
    }

    /// <summary>
    /// Tries to find the time for the passed in value, using Newton's method
    /// Note that this is an expensive function at the moment!
    /// </summary>
    /// <param name="val">Value we want to find the time for</param>
    /// <param name="iterations">How many iterations to perform</param>
    /// <param name="initialGuess">Initial guess from between first key and last key</param>
    /// <returns>approximate time for the passed in value</returns>
    public static float FindTimeForValueNewton(this AnimationCurve curve, float val, int iterations = 150, float initialGuess = 0.5f)
    {
        //TODO (GC-1958) needs too many iterations to get something accurate, 150 at least. need to use Richardson's extrapolation
        //  and Newton-Cotes to get an approximation in fewer iteration steps!

        // check if our value matches any keys; return their time value if so
        for (int i = 0; i < curve.length; i++)
        {
            if (curve.keys[i].value == val)
            {
                return curve.keys[i].time;
            }
        }

        // using newton's method equation: x1 = x0 - ( f(x0) - y ) / f'(x0)
        var startTime = curve.keys[0].time;
        var endTime = curve.keys[curve.length - 1].time;
        var approxTimeValue = (endTime - startTime) * Mathf.Clamp01(initialGuess);
        approxTimeValue += startTime;

        for (int i = 0; i < iterations; i++)
        {
            float topTerm = curve.EvaluateIgnoreWrap(approxTimeValue) - val;
            //TODO (GC-2788) we should use the real Differentiate function when its working properly
            //float bottomTerm = curve.Differentiate(approxTimeValue, ignoreWrap: true);
            float bottomTerm = curve.ApproxDifferentiate(approxTimeValue, ignoreWrap: true);

            // terminate immediately if we run into a 0 slope
            if (bottomTerm == 0f)
            {
                break;
            }

            approxTimeValue = approxTimeValue - (topTerm / bottomTerm);
        }

        return approxTimeValue;
    }

    /// <summary>
    /// Creates a reversed curve from a monotonic curve
    /// </summary>
    /// <returns>Reversed monotonic curve</returns>
    /// <exception cref="System.ArgumentException">thrown when the original curve is not monotonic</exception>
    public static AnimationCurve ReverseCurve(this AnimationCurve curve)
    {
        Debug.LogError("THIS DOES NOT WORK CORRECTLY; THIS NEEDS TO BE REVISITED");
        var ret = new AnimationCurve();

        bool notMonotonic = false;
        float sign = 0f;
        for (int i = 0; i < curve.keys.Length; i++)
        {
            ref var origKey = ref curve.keys[i];
            var revKey = new Keyframe(origKey.value, origKey.time);

            // set our sign if we don't have one yet
            if (sign == 0.0f)
            {
                sign = Mathf.Sign(origKey.inTangent);
            }
            // if this key's sign is not the same as what we have,
            //  this curve is changing slopes, making it not monotonic
            else if (sign != Mathf.Sign(origKey.inTangent))
            {
                notMonotonic = true;
                break;
            }

            if (origKey.inTangent == 0f)
            {
                revKey.inTangent = revKey.outTangent = 1f;
            }
            else if (origKey.inTangent < 0f)
            {
                revKey.inTangent = 1f / origKey.outTangent;
                revKey.outTangent = 1f / origKey.inTangent;
            }
            else
            {
                revKey.inTangent = 1f / origKey.inTangent;
                revKey.outTangent = 1f / origKey.outTangent;
            }

            ret.AddKey(revKey);
        }

        if (notMonotonic)
        {
            throw new System.ArgumentException("Curve is not monotonic (only ever increases or decreases), cannot create reversed curve");
        }

        return ret;
    }
    #endregion

    #region Animator
    /// <summary>
    /// Checks if we have the specified parameter
    /// </summary>
    /// <param name="parameterHash">Hash of the parameter</param>
    /// <returns>true if the parameter is preset, false otherwise</returns>
    public static bool HasParameter(this Animator animator, int parameterHash)
    {
        bool ret = false;
        var parameters = animator.parameters;
        foreach (var param in parameters)
        {
            if (param.nameHash == parameterHash)
            {
                ret = true;
                break;
            }
        }

        return ret;
    }

    /// <summary>
    /// Checks if we have the specified parameter
    /// </summary>
    /// <param name="parameter">Name of the parameter</param>
    /// <returns>true if the parameter is preset, false otherwise</returns>
    public static bool HasParameter(this Animator animator, string parameter)
    {
        return animator.HasParameter(Animator.StringToHash(parameter));
    }

    /// <summary>
    /// Changes the controller at run time
    /// (this is a safety wrapper around runtimeAnimatorController)
    /// </summary>
    /// <param name="controller">New controller we want to set</param>
    public static void ChangeController(this Animator animator, RuntimeAnimatorController controller)
    {
        if (animator.runtimeAnimatorController != controller)
        {
            var prevPos = animator.transform.position;
            animator.runtimeAnimatorController = controller;
            // restoring previous position as root motion animators will change the position inexplicably when setting a different controller
            animator.transform.position = prevPos;
        }
    }
    #endregion

    #region Enumerables
    //// Enumerables

    /// <summary>
    /// Performs an action for each value in an enumerable
    /// </summary>
    /// <param name="action">Delegate to call on each value</param>
    public static void DoActionForEach<T>(this IEnumerable<T> data, System.Action<T> action)
    {
        foreach (var val in data)
        {
            action(val);
        }
    }

    /// <summary>
    /// Performs an action for each non-null object in an enumerable of UnityEngine.Object derived objects.
    /// </summary>
    /// <param name="action">Delegate to call on each non-null object</param>
    public static void DoActionForEachUnityObject<T>(this IEnumerable<T> data, System.Action<T> action) where T : UnityEngine.Object
    {
        foreach (var val in data)
        {
            if (val != null)
            {
                action(val);
            }
        }
    }

    /// <summary>
    /// Grabs the closest Component of type <typeparamref name="T"/> from the point defined by <paramref name="fromPoint"/>
    /// </summary>
    /// <param name="items">Set of Component based objects we want to get the closest Component from</param>
    /// <param name="fromPoint">The point we want to be the closest to</param>
    /// <param name="predicate">Optional predicate to dictate which items we want to compare against</param>
    /// <typeparam name="T"></typeparam>
    /// <returns>The closest Component in <paramref name="items"/></returns>
    public static T GetClosest<T>(this IEnumerable<T> items, Vector3 fromPoint, Func<T, bool> predicate = null) where T : Component
    {
        var closestDistanceSq = float.MaxValue;
        T closestItem = null;

        foreach (var item in items)
        {
            if (predicate == null || predicate(item))
            {
                var distanceSq = (item.transform.position - fromPoint).sqrMagnitude;
                if (distanceSq < closestDistanceSq)
                {
                    closestDistanceSq = distanceSq;
                    closestItem = item;
                }
            }
        }

        return closestItem;
    }

    /// <summary>
    /// Grabs the closest Component of type <typeparamref name="T"/> from the point defined by <paramref name="fromPoint"/>
    /// </summary>
    /// <param name="items">Set of Component based objects we want to get the closest Component from</param>
    /// <param name="fromPoint">The point we want to be the closest to</param>
    /// <param name="distance">Set to the distance of the closest item to <paramref name="fromPoint"/></param>
    /// <param name="predicate">Optional predicate to dictate which items we want to compare against</param>
    /// <typeparam name="T">The closest Component in <paramref name="items"/></typeparam>
    /// <returns></returns>
    public static T GetClosest<T>(this IEnumerable<T> items, Vector3 fromPoint, out float distance, Func<T, bool> predicate = null) where T : Component
    {
        var closestItem = GetClosest(items, fromPoint, predicate);
        distance = closestItem ? (closestItem.transform.position - fromPoint).magnitude : float.MaxValue;
        return closestItem;
    }
    #endregion

    #region List
    /// <summary>
    /// Retrieves the last element from the <see cref="List{T}"/>
    /// </summary>
    /// <returns>The last element inside the <see cref="List{T}"/></returns>
    public static T GetLast<T>(this IList<T> list)
    {
        return list[list.Count - 1];
    }

    /// <summary>
    /// Performs "fast remove" of the item at <paramref name="index"/> by
    /// swapping in the last element at <paramref name="index"/> and removing
    /// the last element in the <see cref="List{T}"/>
    /// </summary>
    /// <param name="index">The index of the item we want to remove</param>
    public static void FastRemove<T>(this IList<T> list, int index)
    {
        Debug.Assert(index < list.Count);

        if (index == list.Count - 1)
        {
            list.RemoveAt(index);
        }
        else
        {
            list[index] = list[list.Count - 1];
            list.RemoveAt(list.Count - 1);
        }
    }

    /// <summary>
    /// Grabs last element from the list and returns it, while also removing it from the list
    /// </summary>
    /// <returns>Last element that used to be in the list</returns>
    public static T PopBack<T>(this IList<T> list)
    {
        var ret = list.GetLast();
        list.RemoveAt(list.Count - 1);
        return ret;
    }

    // cached off RNG for our randomizing functions
    private static System.Random rng = new System.Random();

    /// <summary>
    /// Shuffles the list in-place
    /// </summary>
    public static void Shuffle<T>(this IList<T> list)
    {
        int n = list.Count;
        while (n > 1)
        {
            n--;
            int k = rng.Next(n + 1);
            T value = list[k];
            list[k] = list[n];
            list[n] = value;
        }
    }
    #endregion

    #region Coroutine

    /// <summary>
    /// Extended method for setting a stored variable coroutine (and making sure any instances of it running stop first).
    /// </summary>
    /// <param name="coroutineVar"></param>
    /// <param name="coroutineMethod"></param>
    public static void SetCoroutine(this IEnumerator coroutineVar, MonoBehaviour mono, IEnumerator coroutineMethod)
    {
        //stop it if it exists
        if (coroutineVar != null)
        {
            mono.StopCoroutine(coroutineVar);
        }

        //start new version of coroutine. 
        coroutineVar = coroutineMethod;

        //active object check 
        if (mono.gameObject.activeSelf)
        {
            mono.StartCoroutine(coroutineVar);
        }
        else
        {
            Debug.LogError("Coroutine executed to first yield, but it will not finish.", mono);
        }
    }

    #endregion

#if UNITY_EDITOR
    /// <summary>
    /// Adds a component to a game object that is a clone of the gameobject provided to it
    /// </summary>
    /// <typeparam name="T">Type of the component being added</typeparam>
    /// <param name="game">New object the component is being cloned to</param>
    /// <param name="duplicate">Component being duplicated</param>
    /// <returns>Returns the newly cloned component</returns>
    public static T AddClonedComponent<T>(this GameObject game, T duplicate) where T : Component
    {
        T target = game.AddComponent<T>();

        foreach (PropertyInfo x in typeof(T).GetProperties())
        {
            if (x.CanWrite)
            {
                x.SetValue(target, x.GetValue(duplicate));
            }
        }
        return target;
    }
#endif
}

//// Delagate Definitions
public delegate void Delegate();
public delegate void Delegate<in T>(T value);