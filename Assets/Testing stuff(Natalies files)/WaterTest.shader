// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:1,lgpr:1,limd:3,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:2865,x:33454,y:32460,varname:node_2865,prsc:2|diff-9356-OUT,spec-4842-OUT,gloss-1813-OUT,normal-4791-OUT;n:type:ShaderForge.SFN_Slider,id:1813,x:32970,y:32608,ptovrint:False,ptlb:Gloss,ptin:_Gloss,varname:_Metallic_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Vector1,id:4842,x:33049,y:32502,varname:node_4842,prsc:2,v1:0;n:type:ShaderForge.SFN_Lerp,id:9356,x:32983,y:32260,varname:node_9356,prsc:2|A-513-RGB,B-2031-RGB,T-6049-OUT;n:type:ShaderForge.SFN_Fresnel,id:6049,x:32774,y:32501,varname:node_6049,prsc:2|NRM-2295-OUT,EXP-6990-OUT;n:type:ShaderForge.SFN_NormalVector,id:2295,x:32593,y:32440,prsc:2,pt:True;n:type:ShaderForge.SFN_ConstantClamp,id:6990,x:32593,y:32636,varname:node_6990,prsc:2,min:0,max:4|IN-14-OUT;n:type:ShaderForge.SFN_ValueProperty,id:14,x:32375,y:32636,ptovrint:False,ptlb:Colour Fresnel,ptin:_ColourFresnel,varname:node_14,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1.336;n:type:ShaderForge.SFN_Color,id:513,x:32677,y:32120,ptovrint:False,ptlb:ColourDeep,ptin:_ColourDeep,varname:node_513,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.0509804,c2:0.172549,c3:0.227451,c4:1;n:type:ShaderForge.SFN_Color,id:2031,x:32677,y:32290,ptovrint:False,ptlb:ColourShallow,ptin:_ColourShallow,varname:node_2031,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.4039216,c2:0.8313726,c3:0.9254903,c4:1;n:type:ShaderForge.SFN_Tex2d,id:6920,x:32201,y:32823,varname:node_6920,prsc:2,ntxv:0,isnm:False|UVIN-2359-OUT,TEX-2363-TEX;n:type:ShaderForge.SFN_Tex2d,id:9686,x:32161,y:33199,varname:node_9686,prsc:2,ntxv:0,isnm:False|UVIN-317-OUT,TEX-2363-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:2363,x:31939,y:33029,ptovrint:False,ptlb:NormalMap,ptin:_NormalMap,varname:node_2363,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Slider,id:6445,x:32626,y:33010,ptovrint:False,ptlb:Normal BlendStrength,ptin:_NormalBlendStrength,varname:node_6445,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Time,id:4569,x:33360,y:33392,varname:node_4569,prsc:2;n:type:ShaderForge.SFN_FragmentPosition,id:9983,x:33344,y:33182,varname:node_9983,prsc:2;n:type:ShaderForge.SFN_Append,id:8794,x:33519,y:33197,varname:node_8794,prsc:2|A-9983-X,B-9983-Z;n:type:ShaderForge.SFN_Divide,id:6709,x:33686,y:33313,varname:node_6709,prsc:2|A-8794-OUT,B-8440-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8440,x:33538,y:33426,ptovrint:False,ptlb:Uv scale,ptin:_Uvscale,varname:node_8440,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Set,id:3733,x:33852,y:33328,varname:WorldUV,prsc:2|IN-6709-OUT;n:type:ShaderForge.SFN_Get,id:1669,x:31024,y:32184,varname:node_1669,prsc:2|IN-3733-OUT;n:type:ShaderForge.SFN_Set,id:5149,x:32200,y:32191,varname:UV1,prsc:2|IN-219-OUT;n:type:ShaderForge.SFN_Set,id:3341,x:32215,y:32344,varname:UV2,prsc:2|IN-8570-OUT;n:type:ShaderForge.SFN_Vector4Property,id:6461,x:31260,y:31973,ptovrint:False,ptlb:UV1Animator,ptin:_UV1Animator,varname:node_6461,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0,v2:0,v3:0,v4:0;n:type:ShaderForge.SFN_Vector4Property,id:3662,x:31247,y:32513,ptovrint:False,ptlb:UV2Animator,ptin:_UV2Animator,varname:node_3662,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0,v2:0,v3:0,v4:0;n:type:ShaderForge.SFN_ComponentMask,id:8941,x:31605,y:32222,varname:node_8941,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-5697-OUT;n:type:ShaderForge.SFN_ComponentMask,id:8151,x:31605,y:32388,varname:node_8151,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-8081-OUT;n:type:ShaderForge.SFN_Time,id:8851,x:31407,y:32281,varname:node_8851,prsc:2;n:type:ShaderForge.SFN_Multiply,id:7275,x:31605,y:32073,varname:node_7275,prsc:2|A-6461-Y,B-8851-TSL;n:type:ShaderForge.SFN_Multiply,id:9621,x:31605,y:31933,varname:node_9621,prsc:2|A-6461-X,B-8851-TSL;n:type:ShaderForge.SFN_Add,id:5259,x:31824,y:32044,varname:node_5259,prsc:2|A-9621-OUT,B-8941-R;n:type:ShaderForge.SFN_Add,id:4978,x:31824,y:32191,varname:node_4978,prsc:2|A-7275-OUT,B-8941-G;n:type:ShaderForge.SFN_Append,id:219,x:32031,y:32191,varname:node_219,prsc:2|A-5259-OUT,B-4978-OUT;n:type:ShaderForge.SFN_Add,id:384,x:31824,y:32330,varname:node_384,prsc:2|A-8151-R,B-2966-OUT;n:type:ShaderForge.SFN_Add,id:2988,x:31827,y:32475,varname:node_2988,prsc:2|A-8151-G,B-8475-OUT;n:type:ShaderForge.SFN_Multiply,id:2966,x:31605,y:32543,varname:node_2966,prsc:2|A-3662-X,B-8851-TSL;n:type:ShaderForge.SFN_Multiply,id:8475,x:31605,y:32685,varname:node_8475,prsc:2|A-3662-Y,B-8851-TSL;n:type:ShaderForge.SFN_Append,id:8570,x:32031,y:32344,varname:node_8570,prsc:2|A-384-OUT,B-2988-OUT;n:type:ShaderForge.SFN_Multiply,id:5697,x:31247,y:32164,varname:node_5697,prsc:2|A-1669-OUT,B-118-OUT;n:type:ShaderForge.SFN_Multiply,id:8081,x:31247,y:32332,varname:node_8081,prsc:2|A-1669-OUT,B-2971-OUT;n:type:ShaderForge.SFN_ValueProperty,id:118,x:31024,y:32294,ptovrint:False,ptlb:UV1Tiling,ptin:_UV1Tiling,varname:node_118,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:2971,x:31024,y:32388,ptovrint:False,ptlb:UV2Tiling,ptin:_UV2Tiling,varname:node_2971,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Get,id:2359,x:31955,y:32859,varname:node_2359,prsc:2|IN-5149-OUT;n:type:ShaderForge.SFN_Get,id:317,x:31955,y:32943,varname:node_317,prsc:2|IN-3341-OUT;n:type:ShaderForge.SFN_Multiply,id:3400,x:32600,y:32823,varname:node_3400,prsc:2|A-3902-OUT,B-4897-OUT;n:type:ShaderForge.SFN_Slider,id:4897,x:32201,y:33018,ptovrint:False,ptlb:NormlMap1Strength,ptin:_NormlMap1Strength,varname:node_4897,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Append,id:6848,x:32772,y:32823,varname:node_6848,prsc:2|A-3400-OUT,B-6320-OUT;n:type:ShaderForge.SFN_ComponentMask,id:3902,x:32382,y:32823,varname:node_3902,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-6920-RGB;n:type:ShaderForge.SFN_ValueProperty,id:6320,x:32437,y:33120,ptovrint:False,ptlb:NormalValue,ptin:_NormalValue,varname:node_6320,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Lerp,id:3089,x:33030,y:33022,varname:node_3089,prsc:2|A-6848-OUT,B-3093-OUT,T-6445-OUT;n:type:ShaderForge.SFN_ComponentMask,id:8481,x:32358,y:33199,varname:node_8481,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-9686-RGB;n:type:ShaderForge.SFN_Multiply,id:6731,x:32608,y:33227,varname:node_6731,prsc:2|A-8481-OUT,B-5193-OUT;n:type:ShaderForge.SFN_Slider,id:5193,x:32269,y:33378,ptovrint:False,ptlb:NormalMap2Strength,ptin:_NormalMap2Strength,varname:node_5193,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Append,id:3093,x:32811,y:33184,varname:node_3093,prsc:2|A-6731-OUT,B-6320-OUT;n:type:ShaderForge.SFN_Set,id:4971,x:33243,y:33009,varname:Normals,prsc:2|IN-3089-OUT;n:type:ShaderForge.SFN_Get,id:4791,x:33132,y:32708,varname:node_4791,prsc:2|IN-4971-OUT;proporder:513-2031-14-1813-2363-4897-5193-6461-3662-6445-8440-118-2971-6320;pass:END;sub:END;*/

Shader "Shader Forge/WaterTest" {
    Properties {
        _ColourDeep ("ColourDeep", Color) = (0.0509804,0.172549,0.227451,1)
        _ColourShallow ("ColourShallow", Color) = (0.4039216,0.8313726,0.9254903,1)
        _ColourFresnel ("Colour Fresnel", Float ) = 1.336
        _Gloss ("Gloss", Range(0, 1)) = 1
        _NormalMap ("NormalMap", 2D) = "bump" {}
        _NormlMap1Strength ("NormlMap1Strength", Range(0, 1)) = 0
        _NormalMap2Strength ("NormalMap2Strength", Range(0, 1)) = 0
        _UV1Animator ("UV1Animator", Vector) = (0,0,0,0)
        _UV2Animator ("UV2Animator", Vector) = (0,0,0,0)
        _NormalBlendStrength ("Normal BlendStrength", Range(0, 1)) = 0
        _Uvscale ("Uv scale", Float ) = 1
        _UV1Tiling ("UV1Tiling", Float ) = 0
        _UV2Tiling ("UV2Tiling", Float ) = 0
        _NormalValue ("NormalValue", Float ) = 1
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #pragma multi_compile_instancing
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma target 3.0
            uniform sampler2D _NormalMap; uniform float4 _NormalMap_ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float, _Gloss)
                UNITY_DEFINE_INSTANCED_PROP( float, _ColourFresnel)
                UNITY_DEFINE_INSTANCED_PROP( float4, _ColourDeep)
                UNITY_DEFINE_INSTANCED_PROP( float4, _ColourShallow)
                UNITY_DEFINE_INSTANCED_PROP( float, _NormalBlendStrength)
                UNITY_DEFINE_INSTANCED_PROP( float, _Uvscale)
                UNITY_DEFINE_INSTANCED_PROP( float4, _UV1Animator)
                UNITY_DEFINE_INSTANCED_PROP( float4, _UV2Animator)
                UNITY_DEFINE_INSTANCED_PROP( float, _UV1Tiling)
                UNITY_DEFINE_INSTANCED_PROP( float, _UV2Tiling)
                UNITY_DEFINE_INSTANCED_PROP( float, _NormlMap1Strength)
                UNITY_DEFINE_INSTANCED_PROP( float, _NormalValue)
                UNITY_DEFINE_INSTANCED_PROP( float, _NormalMap2Strength)
            UNITY_INSTANCING_BUFFER_END( Props )
            struct VertexInput {
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float2 uv1 : TEXCOORD0;
                float2 uv2 : TEXCOORD1;
                float4 posWorld : TEXCOORD2;
                float3 normalDir : TEXCOORD3;
                float3 tangentDir : TEXCOORD4;
                float3 bitangentDir : TEXCOORD5;
                LIGHTING_COORDS(6,7)
                UNITY_FOG_COORDS(8)
                #if defined(LIGHTMAP_ON) || defined(UNITY_SHOULD_SAMPLE_SH)
                    float4 ambientOrLightmapUV : TEXCOORD9;
                #endif
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                #ifdef LIGHTMAP_ON
                    o.ambientOrLightmapUV.xy = v.texcoord1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
                    o.ambientOrLightmapUV.zw = 0;
                #elif UNITY_SHOULD_SAMPLE_SH
                #endif
                #ifdef DYNAMICLIGHTMAP_ON
                    o.ambientOrLightmapUV.zw = v.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
                #endif
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float4 _UV1Animator_var = UNITY_ACCESS_INSTANCED_PROP( Props, _UV1Animator );
                float4 node_8851 = _Time;
                float _Uvscale_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Uvscale );
                float2 WorldUV = (float2(i.posWorld.r,i.posWorld.b)/_Uvscale_var);
                float2 node_1669 = WorldUV;
                float _UV1Tiling_var = UNITY_ACCESS_INSTANCED_PROP( Props, _UV1Tiling );
                float2 node_8941 = (node_1669*_UV1Tiling_var).rg;
                float2 UV1 = float2(((_UV1Animator_var.r*node_8851.r)+node_8941.r),((_UV1Animator_var.g*node_8851.r)+node_8941.g));
                float2 node_2359 = UV1;
                float3 node_6920 = UnpackNormal(tex2D(_NormalMap,TRANSFORM_TEX(node_2359, _NormalMap)));
                float _NormlMap1Strength_var = UNITY_ACCESS_INSTANCED_PROP( Props, _NormlMap1Strength );
                float _NormalValue_var = UNITY_ACCESS_INSTANCED_PROP( Props, _NormalValue );
                float _UV2Tiling_var = UNITY_ACCESS_INSTANCED_PROP( Props, _UV2Tiling );
                float2 node_8151 = (node_1669*_UV2Tiling_var).rg;
                float4 _UV2Animator_var = UNITY_ACCESS_INSTANCED_PROP( Props, _UV2Animator );
                float2 UV2 = float2((node_8151.r+(_UV2Animator_var.r*node_8851.r)),(node_8151.g+(_UV2Animator_var.g*node_8851.r)));
                float2 node_317 = UV2;
                float3 node_9686 = UnpackNormal(tex2D(_NormalMap,TRANSFORM_TEX(node_317, _NormalMap)));
                float _NormalMap2Strength_var = UNITY_ACCESS_INSTANCED_PROP( Props, _NormalMap2Strength );
                float _NormalBlendStrength_var = UNITY_ACCESS_INSTANCED_PROP( Props, _NormalBlendStrength );
                float3 Normals = lerp(float3((node_6920.rgb.rg*_NormlMap1Strength_var),_NormalValue_var),float3((node_9686.rgb.rg*_NormalMap2Strength_var),_NormalValue_var),_NormalBlendStrength_var);
                float3 normalLocal = Normals;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float _Gloss_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Gloss );
                float gloss = _Gloss_var;
                float perceptualRoughness = 1.0 - _Gloss_var;
                float roughness = perceptualRoughness * perceptualRoughness;
                float specPow = exp2( gloss * 10.0 + 1.0 );
/////// GI Data:
                UnityLight light;
                #ifdef LIGHTMAP_OFF
                    light.color = lightColor;
                    light.dir = lightDirection;
                    light.ndotl = LambertTerm (normalDirection, light.dir);
                #else
                    light.color = half3(0.f, 0.f, 0.f);
                    light.ndotl = 0.0f;
                    light.dir = half3(0.f, 0.f, 0.f);
                #endif
                UnityGIInput d;
                d.light = light;
                d.worldPos = i.posWorld.xyz;
                d.worldViewDir = viewDirection;
                d.atten = attenuation;
                #if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON)
                    d.ambient = 0;
                    d.lightmapUV = i.ambientOrLightmapUV;
                #else
                    d.ambient = i.ambientOrLightmapUV;
                #endif
                #if UNITY_SPECCUBE_BLENDING || UNITY_SPECCUBE_BOX_PROJECTION
                    d.boxMin[0] = unity_SpecCube0_BoxMin;
                    d.boxMin[1] = unity_SpecCube1_BoxMin;
                #endif
                #if UNITY_SPECCUBE_BOX_PROJECTION
                    d.boxMax[0] = unity_SpecCube0_BoxMax;
                    d.boxMax[1] = unity_SpecCube1_BoxMax;
                    d.probePosition[0] = unity_SpecCube0_ProbePosition;
                    d.probePosition[1] = unity_SpecCube1_ProbePosition;
                #endif
                d.probeHDR[0] = unity_SpecCube0_HDR;
                d.probeHDR[1] = unity_SpecCube1_HDR;
                Unity_GlossyEnvironmentData ugls_en_data;
                ugls_en_data.roughness = 1.0 - gloss;
                ugls_en_data.reflUVW = viewReflectDirection;
                UnityGI gi = UnityGlobalIllumination(d, 1, normalDirection, ugls_en_data );
                lightDirection = gi.light.dir;
                lightColor = gi.light.color;
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float LdotH = saturate(dot(lightDirection, halfDirection));
                float3 specularColor = 0.0;
                float specularMonochrome;
                float4 _ColourDeep_var = UNITY_ACCESS_INSTANCED_PROP( Props, _ColourDeep );
                float4 _ColourShallow_var = UNITY_ACCESS_INSTANCED_PROP( Props, _ColourShallow );
                float _ColourFresnel_var = UNITY_ACCESS_INSTANCED_PROP( Props, _ColourFresnel );
                float3 diffuseColor = lerp(_ColourDeep_var.rgb,_ColourShallow_var.rgb,pow(1.0-max(0,dot(normalDirection, viewDirection)),clamp(_ColourFresnel_var,0,4))); // Need this for specular when using metallic
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, specularColor, specularColor, specularMonochrome );
                specularMonochrome = 1.0-specularMonochrome;
                float NdotV = abs(dot( normalDirection, viewDirection ));
                float NdotH = saturate(dot( normalDirection, halfDirection ));
                float VdotH = saturate(dot( viewDirection, halfDirection ));
                float visTerm = SmithJointGGXVisibilityTerm( NdotL, NdotV, roughness );
                float normTerm = GGXTerm(NdotH, roughness);
                float specularPBL = (visTerm*normTerm) * UNITY_PI;
                #ifdef UNITY_COLORSPACE_GAMMA
                    specularPBL = sqrt(max(1e-4h, specularPBL));
                #endif
                specularPBL = max(0, specularPBL * NdotL);
                #if defined(_SPECULARHIGHLIGHTS_OFF)
                    specularPBL = 0.0;
                #endif
                half surfaceReduction;
                #ifdef UNITY_COLORSPACE_GAMMA
                    surfaceReduction = 1.0-0.28*roughness*perceptualRoughness;
                #else
                    surfaceReduction = 1.0/(roughness*roughness + 1.0);
                #endif
                specularPBL *= any(specularColor) ? 1.0 : 0.0;
                float3 directSpecular = attenColor*specularPBL*FresnelTerm(specularColor, LdotH);
                half grazingTerm = saturate( gloss + specularMonochrome );
                float3 indirectSpecular = (gi.indirect.specular);
                indirectSpecular *= FresnelLerp (specularColor, grazingTerm, NdotV);
                indirectSpecular *= surfaceReduction;
                float3 specular = (directSpecular + indirectSpecular);
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float nlPow5 = Pow5(1-NdotL);
                float nvPow5 = Pow5(1-NdotV);
                float3 directDiffuse = ((1 +(fd90 - 1)*nlPow5) * (1 + (fd90 - 1)*nvPow5) * NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += gi.indirect.diffuse;
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #pragma multi_compile_instancing
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma target 3.0
            uniform sampler2D _NormalMap; uniform float4 _NormalMap_ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float, _Gloss)
                UNITY_DEFINE_INSTANCED_PROP( float, _ColourFresnel)
                UNITY_DEFINE_INSTANCED_PROP( float4, _ColourDeep)
                UNITY_DEFINE_INSTANCED_PROP( float4, _ColourShallow)
                UNITY_DEFINE_INSTANCED_PROP( float, _NormalBlendStrength)
                UNITY_DEFINE_INSTANCED_PROP( float, _Uvscale)
                UNITY_DEFINE_INSTANCED_PROP( float4, _UV1Animator)
                UNITY_DEFINE_INSTANCED_PROP( float4, _UV2Animator)
                UNITY_DEFINE_INSTANCED_PROP( float, _UV1Tiling)
                UNITY_DEFINE_INSTANCED_PROP( float, _UV2Tiling)
                UNITY_DEFINE_INSTANCED_PROP( float, _NormlMap1Strength)
                UNITY_DEFINE_INSTANCED_PROP( float, _NormalValue)
                UNITY_DEFINE_INSTANCED_PROP( float, _NormalMap2Strength)
            UNITY_INSTANCING_BUFFER_END( Props )
            struct VertexInput {
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float2 uv1 : TEXCOORD0;
                float2 uv2 : TEXCOORD1;
                float4 posWorld : TEXCOORD2;
                float3 normalDir : TEXCOORD3;
                float3 tangentDir : TEXCOORD4;
                float3 bitangentDir : TEXCOORD5;
                LIGHTING_COORDS(6,7)
                UNITY_FOG_COORDS(8)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float4 _UV1Animator_var = UNITY_ACCESS_INSTANCED_PROP( Props, _UV1Animator );
                float4 node_8851 = _Time;
                float _Uvscale_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Uvscale );
                float2 WorldUV = (float2(i.posWorld.r,i.posWorld.b)/_Uvscale_var);
                float2 node_1669 = WorldUV;
                float _UV1Tiling_var = UNITY_ACCESS_INSTANCED_PROP( Props, _UV1Tiling );
                float2 node_8941 = (node_1669*_UV1Tiling_var).rg;
                float2 UV1 = float2(((_UV1Animator_var.r*node_8851.r)+node_8941.r),((_UV1Animator_var.g*node_8851.r)+node_8941.g));
                float2 node_2359 = UV1;
                float3 node_6920 = UnpackNormal(tex2D(_NormalMap,TRANSFORM_TEX(node_2359, _NormalMap)));
                float _NormlMap1Strength_var = UNITY_ACCESS_INSTANCED_PROP( Props, _NormlMap1Strength );
                float _NormalValue_var = UNITY_ACCESS_INSTANCED_PROP( Props, _NormalValue );
                float _UV2Tiling_var = UNITY_ACCESS_INSTANCED_PROP( Props, _UV2Tiling );
                float2 node_8151 = (node_1669*_UV2Tiling_var).rg;
                float4 _UV2Animator_var = UNITY_ACCESS_INSTANCED_PROP( Props, _UV2Animator );
                float2 UV2 = float2((node_8151.r+(_UV2Animator_var.r*node_8851.r)),(node_8151.g+(_UV2Animator_var.g*node_8851.r)));
                float2 node_317 = UV2;
                float3 node_9686 = UnpackNormal(tex2D(_NormalMap,TRANSFORM_TEX(node_317, _NormalMap)));
                float _NormalMap2Strength_var = UNITY_ACCESS_INSTANCED_PROP( Props, _NormalMap2Strength );
                float _NormalBlendStrength_var = UNITY_ACCESS_INSTANCED_PROP( Props, _NormalBlendStrength );
                float3 Normals = lerp(float3((node_6920.rgb.rg*_NormlMap1Strength_var),_NormalValue_var),float3((node_9686.rgb.rg*_NormalMap2Strength_var),_NormalValue_var),_NormalBlendStrength_var);
                float3 normalLocal = Normals;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float _Gloss_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Gloss );
                float gloss = _Gloss_var;
                float perceptualRoughness = 1.0 - _Gloss_var;
                float roughness = perceptualRoughness * perceptualRoughness;
                float specPow = exp2( gloss * 10.0 + 1.0 );
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float LdotH = saturate(dot(lightDirection, halfDirection));
                float3 specularColor = 0.0;
                float specularMonochrome;
                float4 _ColourDeep_var = UNITY_ACCESS_INSTANCED_PROP( Props, _ColourDeep );
                float4 _ColourShallow_var = UNITY_ACCESS_INSTANCED_PROP( Props, _ColourShallow );
                float _ColourFresnel_var = UNITY_ACCESS_INSTANCED_PROP( Props, _ColourFresnel );
                float3 diffuseColor = lerp(_ColourDeep_var.rgb,_ColourShallow_var.rgb,pow(1.0-max(0,dot(normalDirection, viewDirection)),clamp(_ColourFresnel_var,0,4))); // Need this for specular when using metallic
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, specularColor, specularColor, specularMonochrome );
                specularMonochrome = 1.0-specularMonochrome;
                float NdotV = abs(dot( normalDirection, viewDirection ));
                float NdotH = saturate(dot( normalDirection, halfDirection ));
                float VdotH = saturate(dot( viewDirection, halfDirection ));
                float visTerm = SmithJointGGXVisibilityTerm( NdotL, NdotV, roughness );
                float normTerm = GGXTerm(NdotH, roughness);
                float specularPBL = (visTerm*normTerm) * UNITY_PI;
                #ifdef UNITY_COLORSPACE_GAMMA
                    specularPBL = sqrt(max(1e-4h, specularPBL));
                #endif
                specularPBL = max(0, specularPBL * NdotL);
                #if defined(_SPECULARHIGHLIGHTS_OFF)
                    specularPBL = 0.0;
                #endif
                specularPBL *= any(specularColor) ? 1.0 : 0.0;
                float3 directSpecular = attenColor*specularPBL*FresnelTerm(specularColor, LdotH);
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float nlPow5 = Pow5(1-NdotL);
                float nvPow5 = Pow5(1-NdotV);
                float3 directDiffuse = ((1 +(fd90 - 1)*nlPow5) * (1 + (fd90 - 1)*nvPow5) * NdotL) * attenColor;
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "Meta"
            Tags {
                "LightMode"="Meta"
            }
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_META 1
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #pragma multi_compile_instancing
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #include "UnityMetaPass.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma target 3.0
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float, _Gloss)
                UNITY_DEFINE_INSTANCED_PROP( float, _ColourFresnel)
                UNITY_DEFINE_INSTANCED_PROP( float4, _ColourDeep)
                UNITY_DEFINE_INSTANCED_PROP( float4, _ColourShallow)
            UNITY_INSTANCING_BUFFER_END( Props )
            struct VertexInput {
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float2 uv1 : TEXCOORD0;
                float2 uv2 : TEXCOORD1;
                float4 posWorld : TEXCOORD2;
                float3 normalDir : TEXCOORD3;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityMetaVertexPosition(v.vertex, v.texcoord1.xy, v.texcoord2.xy, unity_LightmapST, unity_DynamicLightmapST );
                return o;
            }
            float4 frag(VertexOutput i) : SV_Target {
                UNITY_SETUP_INSTANCE_ID( i );
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                UnityMetaInput o;
                UNITY_INITIALIZE_OUTPUT( UnityMetaInput, o );
                
                o.Emission = 0;
                
                float4 _ColourDeep_var = UNITY_ACCESS_INSTANCED_PROP( Props, _ColourDeep );
                float4 _ColourShallow_var = UNITY_ACCESS_INSTANCED_PROP( Props, _ColourShallow );
                float _ColourFresnel_var = UNITY_ACCESS_INSTANCED_PROP( Props, _ColourFresnel );
                float3 diffColor = lerp(_ColourDeep_var.rgb,_ColourShallow_var.rgb,pow(1.0-max(0,dot(normalDirection, viewDirection)),clamp(_ColourFresnel_var,0,4)));
                float specularMonochrome;
                float3 specColor;
                diffColor = DiffuseAndSpecularFromMetallic( diffColor, 0.0, specColor, specularMonochrome );
                float _Gloss_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Gloss );
                float roughness = 1.0 - _Gloss_var;
                o.Albedo = diffColor + specColor * roughness * roughness * 0.5;
                
                return UnityMetaFragment( o );
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
