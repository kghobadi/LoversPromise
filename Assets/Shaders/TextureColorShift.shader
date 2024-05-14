// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "TextureColorShift"
{
	Properties
	{
		_PanSpeeds("Pan Speeds", Vector) = (0,0,0,0)
		_EMSO("E M S O", Vector) = (0,0,0,0)
		_TextureSample0("Texture Sample 0", 2D) = "white" {}
		_EmissionColor("EmissionColor", Color) = (0,0,0,0)
		_AlbedoColor("AlbedoColor", Color) = (0,0,0,0)
		[HideInInspector] _texcoord( "", 2D ) = "white" {}
		[HideInInspector] __dirty( "", Int ) = 1
	}

	SubShader
	{
		Tags{ "RenderType" = "Opaque"  "Queue" = "Geometry+0" "IgnoreProjector" = "True" "IsEmissive" = "true"  }
		Cull Back
		CGPROGRAM
		#include "UnityShaderVariables.cginc"
		#pragma target 3.0
		#pragma surface surf Standard keepalpha addshadow fullforwardshadows exclude_path:deferred 
		struct Input
		{
			float2 uv_texcoord;
		};

		uniform sampler2D _TextureSample0;
		uniform float2 _PanSpeeds;
		uniform float4 _TextureSample0_ST;
		uniform float4 _AlbedoColor;
		uniform float4 _EmissionColor;
		uniform float4 _EMSO;

		void surf( Input i , inout SurfaceOutputStandard o )
		{
			float2 uv_TextureSample0 = i.uv_texcoord * _TextureSample0_ST.xy + _TextureSample0_ST.zw;
			float2 panner4 = ( _Time.y * _PanSpeeds + uv_TextureSample0);
			float4 tex2DNode7 = tex2D( _TextureSample0, panner4 );
			o.Albedo = ( tex2DNode7 * _AlbedoColor ).rgb;
			o.Emission = ( tex2DNode7 * _EmissionColor ).rgb;
			o.Metallic = _EMSO.y;
			o.Smoothness = _EMSO.z;
			o.Alpha = 1;
		}

		ENDCG
	}
	Fallback "Diffuse"
	CustomEditor "ASEMaterialInspector"
}
/*ASEBEGIN
Version=16200
173;585;1235;721;696.1088;643.7968;1.557363;True;True
Node;AmplifyShaderEditor.TextureCoordinatesNode;8;-418.7355,-589.5642;Float;False;0;7;2;3;2;SAMPLER2D;;False;0;FLOAT2;3,3;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.TimeNode;5;-405.8676,-274.1556;Float;False;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.Vector2Node;1;-403.7843,-427.8922;Float;False;Property;_PanSpeeds;Pan Speeds;1;0;Create;True;0;0;False;0;0,0;0.03,-0.01;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.PannerNode;4;-202.6364,-415.8016;Float;False;3;0;FLOAT2;0,0;False;2;FLOAT2;0,0;False;1;FLOAT;1;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SamplerNode;7;-15.88657,-426.0016;Float;True;Property;_TextureSample0;Texture Sample 0;3;0;Create;True;0;0;False;0;None;095c95436574dbe4785a26fb3b273719;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;18;-2.463987,-238.3668;Float;False;Property;_EmissionColor;EmissionColor;8;0;Create;True;0;0;False;0;0,0,0,0;0.3,0.3,0.3,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;17;100.047,-631.3748;Float;False;Property;_AlbedoColor;AlbedoColor;9;0;Create;True;0;0;False;0;0,0,0,0;1,1,1,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;13;-275.7342,181.2303;Float;False;Property;_Opacity;Opacity;5;0;Create;True;0;0;False;0;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.Vector4Node;9;-40.49258,95.1556;Float;False;Property;_EMSO;E M S O;2;0;Create;True;0;0;False;0;0,0,0,0;0,0,0,1;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;15;353.1296,-414.1807;Float;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;10;-239.6619,-51.50381;Float;False;Property;_Emission;Emission;6;0;Create;True;0;0;False;0;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;11;-240.9097,22.2394;Float;False;Property;_Metallic;Metallic;7;0;Create;True;0;0;False;0;0;0.4;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;12;-234.9187,107.4961;Float;False;Property;_Smoothness;Smoothness;4;0;Create;True;0;0;False;0;0;0.5;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;6;289.3207,-218.579;Float;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.Vector3Node;2;-50.61504,-93.0639;Float;False;Property;_PanTextureVals;Pan Texture Vals;0;0;Create;True;0;0;False;0;0,0,0;43.06,1.5,0;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.StandardSurfaceOutputNode;0;520.03,-250.4041;Float;False;True;2;Float;ASEMaterialInspector;0;0;Standard;TextureColorShift;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;False;False;False;False;False;Back;0;False;-1;0;False;-1;False;0;False;-1;0;False;-1;False;0;Opaque;0.5;True;True;0;False;Opaque;;Geometry;ForwardOnly;True;True;True;True;True;True;True;True;True;True;True;True;True;True;True;True;True;0;False;-1;False;0;False;-1;255;False;-1;255;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;False;2;15;10;25;False;0.5;True;0;5;False;-1;10;False;-1;0;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;0;0,0,0,0;VertexOffset;True;False;Cylindrical;False;Relative;0;;-1;-1;-1;-1;0;False;0;0;False;-1;-1;0;False;-1;0;0;0;16;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT;0;False;9;FLOAT;0;False;10;FLOAT;0;False;13;FLOAT3;0,0,0;False;11;FLOAT3;0,0,0;False;12;FLOAT3;0,0,0;False;14;FLOAT4;0,0,0,0;False;15;FLOAT3;0,0,0;False;0
WireConnection;4;0;8;0
WireConnection;4;2;1;0
WireConnection;4;1;5;2
WireConnection;7;1;4;0
WireConnection;15;0;7;0
WireConnection;15;1;17;0
WireConnection;6;0;7;0
WireConnection;6;1;18;0
WireConnection;0;0;15;0
WireConnection;0;2;6;0
WireConnection;0;3;9;2
WireConnection;0;4;9;3
ASEEND*/
//CHKSM=29E1075A35FFAEE84F501658BC02EC3C2DC45ABC