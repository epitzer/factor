USING: alien.c-types alien.syntax ;
IN: windows.directx.d3dcommon

CONSTANT: D3D_DRIVER_TYPE_UNKNOWN     0
CONSTANT: D3D_DRIVER_TYPE_HARDWARE    1
CONSTANT: D3D_DRIVER_TYPE_REFERENCE   2
CONSTANT: D3D_DRIVER_TYPE_NULL        3
CONSTANT: D3D_DRIVER_TYPE_SOFTWARE    4
CONSTANT: D3D_DRIVER_TYPE_WARP        5
TYPEDEF: int D3D_DRIVER_TYPE

CONSTANT: D3D_FEATURE_LEVEL_9_1   0x9100
CONSTANT: D3D_FEATURE_LEVEL_9_2   0x9200
CONSTANT: D3D_FEATURE_LEVEL_9_3   0x9300
CONSTANT: D3D_FEATURE_LEVEL_10_0  0xa000
CONSTANT: D3D_FEATURE_LEVEL_10_1  0xa100
CONSTANT: D3D_FEATURE_LEVEL_11_0  0xb000
TYPEDEF: int D3D_FEATURE_LEVEL
