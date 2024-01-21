{
    "header": {
        "pipelineVersion": "2.2",
        "releaseVersion": "2023.3.0",
        "fileVersion": "1.1",
        "template": false,
        "nodesVersions": {
            "StructureFromMotion": "3.3",
            "PrepareDenseScene": "3.1",
            "DepthMap": "5.0",
            "DepthMapFilter": "4.0",
            "CameraInit": "9.0",
            "FeatureExtraction": "1.3",
            "MeshFiltering": "3.0",
            "Meshing": "7.0",
            "Texturing": "6.0",
            "FeatureMatching": "2.0",
            "ImageMatching": "2.0",
            "SfMTransform": "3.1"
        }
    },
    "graph": {
        "Texturing_1": {
            "nodeType": "Texturing",
            "position": [
                2320,
                19
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "81510bd2528b04dcf049b31844a30b0307e2ffc2"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{Meshing_1.output}",
                "imagesFolder": "{DepthMap_1.imagesFolder}",
                "inputMesh": "{MeshFiltering_1.outputMesh}",
                "inputRefMesh": "",
                "textureSide": 8192,
                "downscale": 2,
                "outputMeshFileType": "obj",
                "colorMapping": {
                    "enable": true,
                    "colorMappingFileType": "exr"
                },
                "bumpMapping": {
                    "enable": true,
                    "bumpType": "Normal",
                    "normalFileType": "exr",
                    "heightFileType": "exr"
                },
                "displacementMapping": {
                    "enable": true,
                    "displacementMappingFileType": "exr"
                },
                "unwrapMethod": "Basic",
                "useUDIM": true,
                "fillHoles": false,
                "padding": 5,
                "multiBandDownscale": 4,
                "multiBandNbContrib": {
                    "high": 1,
                    "midHigh": 5,
                    "midLow": 10,
                    "low": 0
                },
                "useScore": true,
                "bestScoreThreshold": 0.1,
                "angleHardThreshold": 90.0,
                "workingColorSpace": "sRGB",
                "outputColorSpace": "AUTO",
                "correctEV": true,
                "forceVisibleByAllVertices": false,
                "flipNormals": false,
                "visibilityRemappingMethod": "PullPush",
                "subdivisionTargetRatio": 0.8,
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/",
                "outputMesh": "{cache}/{nodeType}/{uid0}/texturedMesh.{outputMeshFileTypeValue}",
                "outputMaterial": "{cache}/{nodeType}/{uid0}/texturedMesh.mtl",
                "outputTextures": "{cache}/{nodeType}/{uid0}/texture_*.exr"
            }
        },
        "Meshing_1": {
            "nodeType": "Meshing",
            "position": [
                1920,
                19
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "71c70abc89243de24bacabdbbc81094b15047b1a"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{DepthMapFilter_1.input}",
                "depthMapsFolder": "{DepthMapFilter_1.output}",
                "outputMeshFileType": "obj",
                "useBoundingBox": false,
                "boundingBox": {
                    "bboxTranslation": {
                        "x": 0.0,
                        "y": 0.0,
                        "z": 0.0
                    },
                    "bboxRotation": {
                        "x": 0.0,
                        "y": 0.0,
                        "z": 0.0
                    },
                    "bboxScale": {
                        "x": 1.0,
                        "y": 1.0,
                        "z": 1.0
                    }
                },
                "estimateSpaceFromSfM": true,
                "estimateSpaceMinObservations": 3,
                "estimateSpaceMinObservationAngle": 10.0,
                "maxInputPoints": 50000000,
                "maxPoints": 5000000,
                "maxPointsPerVoxel": 1000000,
                "minStep": 2,
                "partitioning": "singleBlock",
                "repartition": "multiResolution",
                "angleFactor": 15.0,
                "simFactor": 15.0,
                "minVis": 2,
                "pixSizeMarginInitCoef": 2.0,
                "pixSizeMarginFinalCoef": 4.0,
                "voteMarginFactor": 4.0,
                "contributeMarginFactor": 2.0,
                "simGaussianSizeInit": 10.0,
                "simGaussianSize": 10.0,
                "minAngleThreshold": 1.0,
                "refineFuse": true,
                "helperPointsGridSize": 10,
                "densify": false,
                "densifyNbFront": 1,
                "densifyNbBack": 1,
                "densifyScale": 20.0,
                "nPixelSizeBehind": 4.0,
                "fullWeight": 1.0,
                "voteFilteringForWeaklySupportedSurfaces": true,
                "addLandmarksToTheDensePointCloud": false,
                "invertTetrahedronBasedOnNeighborsNbIterations": 10,
                "minSolidAngleRatio": 0.2,
                "nbSolidAngleFilteringIterations": 2,
                "colorizeOutput": false,
                "addMaskHelperPoints": false,
                "maskHelperPointsWeight": 1.0,
                "maskBorderSize": 4,
                "maxNbConnectedHelperPoints": 50,
                "saveRawDensePointCloud": false,
                "exportDebugTetrahedralization": false,
                "seed": 0,
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "outputMesh": "{cache}/{nodeType}/{uid0}/mesh.{outputMeshFileTypeValue}",
                "output": "{cache}/{nodeType}/{uid0}/densePointCloud.abc"
            }
        },
        "DepthMapFilter_1": {
            "nodeType": "DepthMapFilter",
            "position": [
                1720,
                19
            ],
            "parallelization": {
                "blockSize": 24,
                "size": 329,
                "split": 14
            },
            "uids": {
                "0": "51399742434f3a7b75f776d227f6df44d24d33e1"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{DepthMap_1.input}",
                "depthMapsFolder": "{DepthMap_1.output}",
                "minViewAngle": 2.0,
                "maxViewAngle": 70.0,
                "nNearestCams": 10,
                "minNumOfConsistentCams": 3,
                "minNumOfConsistentCamsWithLowSimilarity": 4,
                "pixToleranceFactor": 2.0,
                "pixSizeBall": 0,
                "pixSizeBallWithLowSimilarity": 0,
                "computeNormalMaps": false,
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/",
                "depth": "{cache}/{nodeType}/{uid0}/<VIEW_ID>_depthMap.exr",
                "sim": "{cache}/{nodeType}/{uid0}/<VIEW_ID>_simMap.exr"
            }
        },
        "ImageMatching_1": {
            "nodeType": "ImageMatching",
            "position": [
                400,
                0
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 329,
                "split": 1
            },
            "uids": {
                "0": "3d14dc6ffb20786fa067e132f7e0f1fcf66bd676"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{FeatureExtraction_1.input}",
                "featuresFolders": [
                    "{FeatureExtraction_1.output}"
                ],
                "method": "SequentialAndVocabularyTree",
                "tree": "${ALICEVISION_VOCTREE}",
                "weights": "",
                "minNbImages": 200,
                "maxDescriptors": 500,
                "nbMatches": 40,
                "nbNeighbors": 5,
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/imageMatches.txt"
            }
        },
        "FeatureExtraction_1": {
            "nodeType": "FeatureExtraction",
            "position": [
                200,
                0
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 329,
                "split": 9
            },
            "uids": {
                "0": "6361dd0114534a0f6f793b828b18ad6e29b0611a"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{CameraInit_1.output}",
                "masksFolder": "",
                "maskExtension": "png",
                "maskInvert": false,
                "describerTypes": [
                    "dspsift"
                ],
                "describerPreset": "normal",
                "maxNbFeatures": 0,
                "describerQuality": "normal",
                "contrastFiltering": "GridSort",
                "relativePeakThreshold": 0.01,
                "gridFiltering": true,
                "workingColorSpace": "sRGB",
                "forceCpuExtraction": true,
                "maxThreads": 0,
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/"
            }
        },
        "StructureFromMotion_1": {
            "nodeType": "StructureFromMotion",
            "position": [
                800,
                0
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 329,
                "split": 1
            },
            "uids": {
                "0": "4de3e569810fedf1ba38eec9a9af2c0cc3a88dcb"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{FeatureMatching_1.input}",
                "featuresFolders": "{FeatureMatching_1.featuresFolders}",
                "matchesFolders": [
                    "{FeatureMatching_1.output}"
                ],
                "describerTypes": "{FeatureMatching_1.describerTypes}",
                "localizerEstimator": "acransac",
                "observationConstraint": "Scale",
                "localizerEstimatorMaxIterations": 4096,
                "localizerEstimatorError": 0.0,
                "lockScenePreviouslyReconstructed": false,
                "useLocalBA": true,
                "localBAGraphDistance": 1,
                "nbFirstUnstableCameras": 30,
                "maxImagesPerGroup": 30,
                "bundleAdjustmentMaxOutliers": 50,
                "maxNumberOfMatches": 0,
                "minNumberOfMatches": 0,
                "minInputTrackLength": 2,
                "minNumberOfObservationsForTriangulation": 2,
                "minAngleForTriangulation": 3.0,
                "minAngleForLandmark": 2.0,
                "maxReprojectionError": 4.0,
                "minAngleInitialPair": 5.0,
                "maxAngleInitialPair": 40.0,
                "useOnlyMatchesFromInputFolder": false,
                "useRigConstraint": true,
                "rigMinNbCamerasForCalibration": 20,
                "lockAllIntrinsics": false,
                "minNbCamerasToRefinePrincipalPoint": 3,
                "filterTrackForks": false,
                "computeStructureColor": true,
                "useAutoTransform": true,
                "initialPairA": "",
                "initialPairB": "",
                "interFileExtension": ".abc",
                "logIntermediateSteps": false,
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/sfm.abc",
                "outputViewsAndPoses": "{cache}/{nodeType}/{uid0}/cameras.sfm",
                "extraInfoFolder": "{cache}/{nodeType}/{uid0}/"
            }
        },
        "PrepareDenseScene_1": {
            "nodeType": "PrepareDenseScene",
            "position": [
                1320,
                19
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 329,
                "split": 9
            },
            "uids": {
                "0": "12ad257d55b9100aed2eb43645a3e7833e1eeae7"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{SfMTransform_1.output}",
                "imagesFolders": [],
                "masksFolders": [],
                "maskExtension": "png",
                "outputFileType": "exr",
                "saveMetadata": true,
                "saveMatricesTxtFiles": false,
                "evCorrection": false,
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/",
                "undistorted": "{cache}/{nodeType}/{uid0}/<VIEW_ID>.{outputFileTypeValue}"
            }
        },
        "CameraInit_1": {
            "nodeType": "CameraInit",
            "position": [
                0,
                0
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 329,
                "split": 1
            },
            "uids": {
                "0": "00d43959d7c2a37211e64bc03358ade0a39c1eac"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "viewpoints": [
                    {
                        "viewId": 10627552,
                        "poseId": 10627552,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3900.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 25252086,
                        "poseId": 25252086,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3040.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 33007966,
                        "poseId": 33007966,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3595.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 36055009,
                        "poseId": 36055009,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3755.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 66803965,
                        "poseId": 66803965,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3990.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 71398171,
                        "poseId": 71398171,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3075.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 81135250,
                        "poseId": 81135250,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame2985.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 95725409,
                        "poseId": 95725409,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame4030.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 96297749,
                        "poseId": 96297749,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3005.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 111073918,
                        "poseId": 111073918,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3705.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 115597894,
                        "poseId": 115597894,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3825.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 120850738,
                        "poseId": 120850738,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame4125.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 123032156,
                        "poseId": 123032156,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame2970.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 123526719,
                        "poseId": 123526719,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3380.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 130565033,
                        "poseId": 130565033,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame4160.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 134181315,
                        "poseId": 134181315,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame2910.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 135747430,
                        "poseId": 135747430,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame4045.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 143291957,
                        "poseId": 143291957,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3640.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 156633076,
                        "poseId": 156633076,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame4305.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 163206561,
                        "poseId": 163206561,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3035.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 171587970,
                        "poseId": 171587970,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame4150.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 171665419,
                        "poseId": 171665419,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame4170.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 177630017,
                        "poseId": 177630017,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame4115.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 190791101,
                        "poseId": 190791101,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3775.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 191915751,
                        "poseId": 191915751,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3370.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 192757129,
                        "poseId": 192757129,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3715.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 196415788,
                        "poseId": 196415788,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame2905.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 206170067,
                        "poseId": 206170067,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3770.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 211791168,
                        "poseId": 211791168,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3090.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 212463583,
                        "poseId": 212463583,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame4470.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 216026179,
                        "poseId": 216026179,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame2840.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 218918083,
                        "poseId": 218918083,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3485.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 219110443,
                        "poseId": 219110443,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3790.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 247628313,
                        "poseId": 247628313,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame4475.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 248754407,
                        "poseId": 248754407,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame2930.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 252475170,
                        "poseId": 252475170,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3530.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 263381977,
                        "poseId": 263381977,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame4060.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 270565713,
                        "poseId": 270565713,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3805.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 273954042,
                        "poseId": 273954042,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame2980.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 282577721,
                        "poseId": 282577721,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3205.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 284035061,
                        "poseId": 284035061,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame4380.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 300819798,
                        "poseId": 300819798,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame4140.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 302802104,
                        "poseId": 302802104,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3235.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 312053275,
                        "poseId": 312053275,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3910.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 322595485,
                        "poseId": 322595485,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3420.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 326575280,
                        "poseId": 326575280,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3745.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 342436547,
                        "poseId": 342436547,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame4370.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 351928353,
                        "poseId": 351928353,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3105.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 354220381,
                        "poseId": 354220381,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame4490.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 355217355,
                        "poseId": 355217355,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame4460.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 365096889,
                        "poseId": 365096889,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3055.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 388847940,
                        "poseId": 388847940,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3585.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 396395567,
                        "poseId": 396395567,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3150.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 398062707,
                        "poseId": 398062707,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3155.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 403123918,
                        "poseId": 403123918,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame2790.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 405081551,
                        "poseId": 405081551,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame4435.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 405825894,
                        "poseId": 405825894,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3830.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 410555227,
                        "poseId": 410555227,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame4080.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 419980960,
                        "poseId": 419980960,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3815.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 426503133,
                        "poseId": 426503133,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3785.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 440663892,
                        "poseId": 440663892,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3695.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 443643426,
                        "poseId": 443643426,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3925.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 449747224,
                        "poseId": 449747224,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3895.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 461329398,
                        "poseId": 461329398,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame4180.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 462226970,
                        "poseId": 462226970,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame2920.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 465632713,
                        "poseId": 465632713,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3160.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 476014659,
                        "poseId": 476014659,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3275.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 480499659,
                        "poseId": 480499659,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame4405.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 483181764,
                        "poseId": 483181764,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3020.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 486145266,
                        "poseId": 486145266,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame4400.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 494020185,
                        "poseId": 494020185,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3375.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 529357468,
                        "poseId": 529357468,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame4190.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 529631244,
                        "poseId": 529631244,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3070.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 538079090,
                        "poseId": 538079090,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3475.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 541736882,
                        "poseId": 541736882,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame4395.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 543529645,
                        "poseId": 543529645,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame2950.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 543551220,
                        "poseId": 543551220,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame4100.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 545657754,
                        "poseId": 545657754,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3480.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 551891422,
                        "poseId": 551891422,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame4085.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 555367306,
                        "poseId": 555367306,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3440.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 560707948,
                        "poseId": 560707948,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3410.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 567597044,
                        "poseId": 567597044,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3515.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 585455360,
                        "poseId": 585455360,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3470.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 606126263,
                        "poseId": 606126263,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3975.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 609843469,
                        "poseId": 609843469,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3125.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 643175718,
                        "poseId": 643175718,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame2895.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 650308973,
                        "poseId": 650308973,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame2820.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 654649589,
                        "poseId": 654649589,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame4070.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 661390985,
                        "poseId": 661390985,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3940.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 665127463,
                        "poseId": 665127463,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3970.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 680926674,
                        "poseId": 680926674,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3700.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 685037297,
                        "poseId": 685037297,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3980.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 696827323,
                        "poseId": 696827323,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3545.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 704155805,
                        "poseId": 704155805,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3780.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 706453802,
                        "poseId": 706453802,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame4090.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 709474351,
                        "poseId": 709474351,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame2845.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 721149504,
                        "poseId": 721149504,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame4005.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 725464276,
                        "poseId": 725464276,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame4145.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 733082417,
                        "poseId": 733082417,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3060.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 739432091,
                        "poseId": 739432091,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3110.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 739993070,
                        "poseId": 739993070,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3290.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 741967664,
                        "poseId": 741967664,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3840.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 747038305,
                        "poseId": 747038305,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3250.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 757734914,
                        "poseId": 757734914,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3355.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 763739373,
                        "poseId": 763739373,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3875.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 767583374,
                        "poseId": 767583374,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3115.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 769523949,
                        "poseId": 769523949,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3085.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 770764261,
                        "poseId": 770764261,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3560.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 772555731,
                        "poseId": 772555731,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3960.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 805813122,
                        "poseId": 805813122,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3260.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 808588827,
                        "poseId": 808588827,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3000.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 814941743,
                        "poseId": 814941743,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3760.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 821232301,
                        "poseId": 821232301,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame2960.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 823133448,
                        "poseId": 823133448,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3765.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 826871644,
                        "poseId": 826871644,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3285.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 827461988,
                        "poseId": 827461988,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3860.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 846037607,
                        "poseId": 846037607,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3340.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 848447790,
                        "poseId": 848447790,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame4155.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 865326379,
                        "poseId": 865326379,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame2945.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 873371346,
                        "poseId": 873371346,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3855.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 873582689,
                        "poseId": 873582689,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame4440.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 883176231,
                        "poseId": 883176231,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3660.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 886185318,
                        "poseId": 886185318,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3730.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 892211680,
                        "poseId": 892211680,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3580.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 901686304,
                        "poseId": 901686304,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3590.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 907967694,
                        "poseId": 907967694,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame4335.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 923381616,
                        "poseId": 923381616,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3665.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 924463494,
                        "poseId": 924463494,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame4105.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 939907856,
                        "poseId": 939907856,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame4365.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 943192747,
                        "poseId": 943192747,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3740.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 945131307,
                        "poseId": 945131307,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame2885.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 945176032,
                        "poseId": 945176032,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame4350.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 955239190,
                        "poseId": 955239190,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3415.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 962214809,
                        "poseId": 962214809,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame4465.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 964131488,
                        "poseId": 964131488,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3575.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 965212153,
                        "poseId": 965212153,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3220.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 971410899,
                        "poseId": 971410899,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3300.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 987577485,
                        "poseId": 987577485,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame2800.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 995628254,
                        "poseId": 995628254,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame2805.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1003059184,
                        "poseId": 1003059184,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame2995.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1010811314,
                        "poseId": 1010811314,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3880.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1010946432,
                        "poseId": 1010946432,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame2940.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1011375220,
                        "poseId": 1011375220,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3520.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1031352598,
                        "poseId": 1031352598,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame4455.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1034693879,
                        "poseId": 1034693879,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3365.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1045585072,
                        "poseId": 1045585072,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame4315.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1049985016,
                        "poseId": 1049985016,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame2935.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1060779252,
                        "poseId": 1060779252,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3460.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1080119335,
                        "poseId": 1080119335,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3315.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1082036953,
                        "poseId": 1082036953,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame4135.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1082879010,
                        "poseId": 1082879010,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame2890.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1087063134,
                        "poseId": 1087063134,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame4390.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1093086233,
                        "poseId": 1093086233,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3625.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1093443159,
                        "poseId": 1093443159,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3605.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1094940158,
                        "poseId": 1094940158,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame2855.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1095178808,
                        "poseId": 1095178808,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3555.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1097972674,
                        "poseId": 1097972674,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3230.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1099315892,
                        "poseId": 1099315892,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3620.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1102194145,
                        "poseId": 1102194145,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3870.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1114683499,
                        "poseId": 1114683499,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3950.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1118414040,
                        "poseId": 1118414040,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3455.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1121601905,
                        "poseId": 1121601905,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame4355.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1122224096,
                        "poseId": 1122224096,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame4120.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1123290017,
                        "poseId": 1123290017,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3400.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1123519256,
                        "poseId": 1123519256,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3810.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1167483218,
                        "poseId": 1167483218,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame2955.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1173699478,
                        "poseId": 1173699478,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame4425.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1174870354,
                        "poseId": 1174870354,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3180.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1175629961,
                        "poseId": 1175629961,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame2825.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1178764931,
                        "poseId": 1178764931,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame4050.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1194992613,
                        "poseId": 1194992613,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3435.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1197812328,
                        "poseId": 1197812328,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3885.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1210357270,
                        "poseId": 1210357270,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3350.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1212910925,
                        "poseId": 1212910925,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame2860.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1217950048,
                        "poseId": 1217950048,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame2900.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1223224501,
                        "poseId": 1223224501,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame4345.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1248337992,
                        "poseId": 1248337992,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3080.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1251395822,
                        "poseId": 1251395822,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3170.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1252198397,
                        "poseId": 1252198397,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame2760.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1260024864,
                        "poseId": 1260024864,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3025.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1271913765,
                        "poseId": 1271913765,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3995.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1284551726,
                        "poseId": 1284551726,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3175.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1286642288,
                        "poseId": 1286642288,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame2795.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1287504577,
                        "poseId": 1287504577,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3955.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1287991888,
                        "poseId": 1287991888,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3490.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1289615156,
                        "poseId": 1289615156,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3395.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1289752979,
                        "poseId": 1289752979,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3965.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1295828230,
                        "poseId": 1295828230,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame4485.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1298535712,
                        "poseId": 1298535712,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame2815.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1318369369,
                        "poseId": 1318369369,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3570.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1324720671,
                        "poseId": 1324720671,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame4480.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1332110351,
                        "poseId": 1332110351,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3525.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1332857599,
                        "poseId": 1332857599,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3215.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1342944497,
                        "poseId": 1342944497,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3425.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1344354379,
                        "poseId": 1344354379,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame4385.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1349623874,
                        "poseId": 1349623874,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3225.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1352188389,
                        "poseId": 1352188389,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3680.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1353395128,
                        "poseId": 1353395128,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame4450.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1353620682,
                        "poseId": 1353620682,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3685.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1360735657,
                        "poseId": 1360735657,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3120.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1362282552,
                        "poseId": 1362282552,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3630.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1363885229,
                        "poseId": 1363885229,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame4015.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1368179211,
                        "poseId": 1368179211,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame4360.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1368542730,
                        "poseId": 1368542730,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3835.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1371940291,
                        "poseId": 1371940291,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3675.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1384760651,
                        "poseId": 1384760651,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame2835.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1388085340,
                        "poseId": 1388085340,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame2775.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1393180479,
                        "poseId": 1393180479,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame2915.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1396738729,
                        "poseId": 1396738729,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame4330.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1396891427,
                        "poseId": 1396891427,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3550.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1419172220,
                        "poseId": 1419172220,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3600.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1422529236,
                        "poseId": 1422529236,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3635.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1430154186,
                        "poseId": 1430154186,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame4040.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1431483317,
                        "poseId": 1431483317,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame4065.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1461510791,
                        "poseId": 1461510791,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3045.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1468401465,
                        "poseId": 1468401465,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3405.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1468737458,
                        "poseId": 1468737458,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3495.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1490794687,
                        "poseId": 1490794687,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3255.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1493601324,
                        "poseId": 1493601324,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3690.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1494647350,
                        "poseId": 1494647350,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3270.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1496085522,
                        "poseId": 1496085522,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame4420.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1503417967,
                        "poseId": 1503417967,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame4020.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1508406367,
                        "poseId": 1508406367,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame2830.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1512647320,
                        "poseId": 1512647320,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3510.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1515516475,
                        "poseId": 1515516475,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame4320.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1519358153,
                        "poseId": 1519358153,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3245.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1528701893,
                        "poseId": 1528701893,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame2755.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1532146280,
                        "poseId": 1532146280,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame2965.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1532179450,
                        "poseId": 1532179450,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame4415.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1538836259,
                        "poseId": 1538836259,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame4410.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1551975923,
                        "poseId": 1551975923,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame4175.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1551977541,
                        "poseId": 1551977541,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3330.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1552528081,
                        "poseId": 1552528081,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame4375.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1553222133,
                        "poseId": 1553222133,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3280.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1578117801,
                        "poseId": 1578117801,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3670.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1584842741,
                        "poseId": 1584842741,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame2880.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1608418566,
                        "poseId": 1608418566,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame2975.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1608746764,
                        "poseId": 1608746764,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame4340.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1632785006,
                        "poseId": 1632785006,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3165.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1641333051,
                        "poseId": 1641333051,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3360.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1641907244,
                        "poseId": 1641907244,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3130.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1648383661,
                        "poseId": 1648383661,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3750.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1650781338,
                        "poseId": 1650781338,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3320.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1654417087,
                        "poseId": 1654417087,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3655.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1661749932,
                        "poseId": 1661749932,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3325.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1667330313,
                        "poseId": 1667330313,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3240.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1668072992,
                        "poseId": 1668072992,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3210.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1672398615,
                        "poseId": 1672398615,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3935.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1677542479,
                        "poseId": 1677542479,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3430.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1679213516,
                        "poseId": 1679213516,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3505.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1679324916,
                        "poseId": 1679324916,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3820.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1679673443,
                        "poseId": 1679673443,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3465.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1684518808,
                        "poseId": 1684518808,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3710.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1686136250,
                        "poseId": 1686136250,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3865.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1688678858,
                        "poseId": 1688678858,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3445.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1698126414,
                        "poseId": 1698126414,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3265.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1699202212,
                        "poseId": 1699202212,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3140.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1703822256,
                        "poseId": 1703822256,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3100.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1704125097,
                        "poseId": 1704125097,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame4445.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1710586618,
                        "poseId": 1710586618,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame2990.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1722273223,
                        "poseId": 1722273223,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame4000.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1738183028,
                        "poseId": 1738183028,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame2810.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1751881431,
                        "poseId": 1751881431,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3135.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1775959751,
                        "poseId": 1775959751,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame4025.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1790387216,
                        "poseId": 1790387216,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame4185.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1795286089,
                        "poseId": 1795286089,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3095.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1802786601,
                        "poseId": 1802786601,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3305.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1807499047,
                        "poseId": 1807499047,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame2850.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1808153070,
                        "poseId": 1808153070,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3985.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1811289338,
                        "poseId": 1811289338,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3540.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1827930270,
                        "poseId": 1827930270,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame2865.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1835736958,
                        "poseId": 1835736958,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3845.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1845284595,
                        "poseId": 1845284595,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame4010.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1846855659,
                        "poseId": 1846855659,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame4195.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1851090707,
                        "poseId": 1851090707,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame4495.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1855897487,
                        "poseId": 1855897487,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame4075.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1858292459,
                        "poseId": 1858292459,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame4325.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1860033434,
                        "poseId": 1860033434,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3195.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1877384768,
                        "poseId": 1877384768,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3335.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1881355873,
                        "poseId": 1881355873,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3565.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1884147986,
                        "poseId": 1884147986,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3345.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1895866092,
                        "poseId": 1895866092,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3385.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1897728955,
                        "poseId": 1897728955,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3015.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1903278046,
                        "poseId": 1903278046,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3145.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1904018986,
                        "poseId": 1904018986,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3500.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1913649757,
                        "poseId": 1913649757,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame4110.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1915443082,
                        "poseId": 1915443082,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3030.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1918411726,
                        "poseId": 1918411726,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3190.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1921115218,
                        "poseId": 1921115218,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3535.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1925107875,
                        "poseId": 1925107875,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame4035.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1925329106,
                        "poseId": 1925329106,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3920.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1932727775,
                        "poseId": 1932727775,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3945.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1937662736,
                        "poseId": 1937662736,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame4310.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1938880909,
                        "poseId": 1938880909,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3610.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1943006523,
                        "poseId": 1943006523,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame4130.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1946378718,
                        "poseId": 1946378718,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame2925.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1947908987,
                        "poseId": 1947908987,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3890.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1948489255,
                        "poseId": 1948489255,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3615.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1975491769,
                        "poseId": 1975491769,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame4095.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1979107939,
                        "poseId": 1979107939,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame4055.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1988862436,
                        "poseId": 1988862436,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3295.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1994213698,
                        "poseId": 1994213698,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3725.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 1995117798,
                        "poseId": 1995117798,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3720.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 2000935686,
                        "poseId": 2000935686,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame2875.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 2004168895,
                        "poseId": 2004168895,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3645.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 2008298675,
                        "poseId": 2008298675,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3800.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 2008540964,
                        "poseId": 2008540964,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3905.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 2027065900,
                        "poseId": 2027065900,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3185.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 2027321685,
                        "poseId": 2027321685,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3735.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 2027833325,
                        "poseId": 2027833325,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame2765.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 2027944995,
                        "poseId": 2027944995,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame4165.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 2029311872,
                        "poseId": 2029311872,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3390.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 2029973511,
                        "poseId": 2029973511,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3795.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 2055309282,
                        "poseId": 2055309282,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame4300.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 2057989253,
                        "poseId": 2057989253,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3650.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 2060250319,
                        "poseId": 2060250319,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame4430.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 2060767919,
                        "poseId": 2060767919,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame2870.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 2077037735,
                        "poseId": 2077037735,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3310.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 2080374614,
                        "poseId": 2080374614,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame2785.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 2090216105,
                        "poseId": 2090216105,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3930.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 2091142124,
                        "poseId": 2091142124,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3065.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 2091466070,
                        "poseId": 2091466070,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3010.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 2092395866,
                        "poseId": 2092395866,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame2780.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 2094155862,
                        "poseId": 2094155862,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3450.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 2123755838,
                        "poseId": 2123755838,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame2770.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 2134399963,
                        "poseId": 2134399963,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3915.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 2136083538,
                        "poseId": 2136083538,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3850.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 2145697224,
                        "poseId": 2145697224,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3200.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    },
                    {
                        "viewId": 2146276957,
                        "poseId": 2146276957,
                        "path": "C:/Users/zbot4/Videos/extract-turkey/final-subset/frame3050.png",
                        "intrinsicId": 2052642655,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"17.300000\", \"Make\": \"DJI\", \"Model\": \"FC6520\", \"ResolutionUnit\": \"none\", \"XResolution\": \"1\", \"YResolution\": \"1\", \"oiio:ColorSpace\": \"Gamma2\", \"oiio:Gamma\": \"1.96\"}"
                    }
                ],
                "intrinsics": [
                    {
                        "intrinsicId": 2052642655,
                        "initialFocalLength": -1.0,
                        "focalLength": 20.88294731452727,
                        "pixelRatio": 1.0,
                        "pixelRatioLocked": true,
                        "type": "radial3",
                        "width": 1920,
                        "height": 1080,
                        "sensorWidth": 17.3,
                        "sensorHeight": 9.731250000000001,
                        "serialNumber": "C:/Users/zbot4/Videos/extract-turkey/final-subset_DJI_FC6520",
                        "principalPoint": {
                            "x": 0.0,
                            "y": 0.0
                        },
                        "initializationMode": "unknown",
                        "distortionInitializationMode": "none",
                        "distortionParams": [
                            0.0,
                            0.0,
                            0.0
                        ],
                        "undistortionOffset": {
                            "x": 0.0,
                            "y": 0.0
                        },
                        "undistortionParams": [],
                        "locked": false
                    }
                ],
                "sensorDatabase": "${ALICEVISION_SENSOR_DB}",
                "lensCorrectionProfileInfo": "${ALICEVISION_LENS_PROFILE_INFO}",
                "lensCorrectionProfileSearchIgnoreCameraModel": true,
                "defaultFieldOfView": 45.0,
                "groupCameraFallback": "folder",
                "allowedCameraModels": [
                    "pinhole",
                    "radial1",
                    "radial3",
                    "brown",
                    "fisheye4",
                    "fisheye1",
                    "3deanamorphic4",
                    "3deradial4",
                    "3declassicld"
                ],
                "rawColorInterpretation": "LibRawWhiteBalancing",
                "colorProfileDatabase": "${ALICEVISION_COLOR_PROFILE_DB}",
                "errorOnMissingColorProfile": true,
                "viewIdMethod": "metadata",
                "viewIdRegex": ".*?(\\d+)",
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/cameraInit.sfm"
            }
        },
        "DepthMap_1": {
            "nodeType": "DepthMap",
            "position": [
                1520,
                19
            ],
            "parallelization": {
                "blockSize": 12,
                "size": 329,
                "split": 28
            },
            "uids": {
                "0": "33267b293a583c259f122544ec626a44918b1a01"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{PrepareDenseScene_1.input}",
                "imagesFolder": "{PrepareDenseScene_1.output}",
                "downscale": 2,
                "minViewAngle": 2.0,
                "maxViewAngle": 70.0,
                "tiling": {
                    "tileBufferWidth": 1024,
                    "tileBufferHeight": 1024,
                    "tilePadding": 64,
                    "autoAdjustSmallImage": true
                },
                "chooseTCamsPerTile": true,
                "maxTCams": 10,
                "sgm": {
                    "sgmScale": 2,
                    "sgmStepXY": 2,
                    "sgmStepZ": -1,
                    "sgmMaxTCamsPerTile": 4,
                    "sgmWSH": 4,
                    "sgmUseSfmSeeds": true,
                    "sgmSeedsRangeInflate": 0.2,
                    "sgmDepthThicknessInflate": 0.0,
                    "sgmMaxSimilarity": 1.0,
                    "sgmGammaC": 5.5,
                    "sgmGammaP": 8.0,
                    "sgmP1": 10.0,
                    "sgmP2Weighting": 100.0,
                    "sgmMaxDepths": 1500,
                    "sgmFilteringAxes": "YX",
                    "sgmDepthListPerTile": true,
                    "sgmUseConsistentScale": false
                },
                "refine": {
                    "refineEnabled": true,
                    "refineScale": 1,
                    "refineStepXY": 1,
                    "refineMaxTCamsPerTile": 4,
                    "refineSubsampling": 10,
                    "refineHalfNbDepths": 15,
                    "refineWSH": 3,
                    "refineSigma": 15.0,
                    "refineGammaC": 15.5,
                    "refineGammaP": 8.0,
                    "refineInterpolateMiddleDepth": false,
                    "refineUseConsistentScale": false
                },
                "colorOptimization": {
                    "colorOptimizationEnabled": true,
                    "colorOptimizationNbIterations": 100
                },
                "customPatchPattern": {
                    "sgmUseCustomPatchPattern": false,
                    "refineUseCustomPatchPattern": false,
                    "customPatchPatternSubparts": [],
                    "customPatchPatternGroupSubpartsPerLevel": false
                },
                "intermediateResults": {
                    "exportIntermediateDepthSimMaps": false,
                    "exportIntermediateNormalMaps": false,
                    "exportIntermediateVolumes": false,
                    "exportIntermediateCrossVolumes": false,
                    "exportIntermediateTopographicCutVolumes": false,
                    "exportIntermediateVolume9pCsv": false,
                    "exportTilePattern": false
                },
                "nbGPUs": 0,
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/",
                "depth": "{cache}/{nodeType}/{uid0}/<VIEW_ID>_depthMap.exr",
                "sim": "{cache}/{nodeType}/{uid0}/<VIEW_ID>_simMap.exr",
                "tilePattern": "{cache}/{nodeType}/{uid0}/<VIEW_ID>_tilePattern.obj",
                "depthSgm": "{cache}/{nodeType}/{uid0}/<VIEW_ID>_depthMap_sgm.exr",
                "depthSgmUpscaled": "{cache}/{nodeType}/{uid0}/<VIEW_ID>_depthMap_sgmUpscaled.exr",
                "depthRefined": "{cache}/{nodeType}/{uid0}/<VIEW_ID>_depthMap_refinedFused.exr"
            }
        },
        "MeshFiltering_1": {
            "nodeType": "MeshFiltering",
            "position": [
                2120,
                19
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "c7f0e15c01a6e15d03e79f5081fa256a67f7c483"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "inputMesh": "{Meshing_1.outputMesh}",
                "outputMeshFileType": "obj",
                "keepLargestMeshOnly": false,
                "smoothingSubset": "all",
                "smoothingBoundariesNeighbours": 0,
                "smoothingIterations": 5,
                "smoothingLambda": 1.0,
                "filteringSubset": "all",
                "filteringIterations": 1,
                "filterLargeTrianglesFactor": 60.0,
                "filterTrianglesRatio": 0.0,
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "outputMesh": "{cache}/{nodeType}/{uid0}/mesh.{outputMeshFileTypeValue}"
            }
        },
        "FeatureMatching_1": {
            "nodeType": "FeatureMatching",
            "position": [
                600,
                0
            ],
            "parallelization": {
                "blockSize": 20,
                "size": 329,
                "split": 17
            },
            "uids": {
                "0": "aa165bd6b1bf838c17018f139d096362c57b37d4"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{ImageMatching_1.input}",
                "featuresFolders": "{ImageMatching_1.featuresFolders}",
                "imagePairsList": "{ImageMatching_1.output}",
                "describerTypes": "{FeatureExtraction_1.describerTypes}",
                "photometricMatchingMethod": "ANN_L2",
                "geometricEstimator": "acransac",
                "geometricFilterType": "fundamental_matrix",
                "distanceRatio": 0.8,
                "maxIteration": 2048,
                "geometricError": 0.0,
                "knownPosesGeometricErrorMax": 5.0,
                "minRequired2DMotion": -1.0,
                "maxMatches": 0,
                "savePutativeMatches": false,
                "crossMatching": false,
                "guidedMatching": false,
                "matchFromKnownCameraPoses": false,
                "exportDebugFiles": false,
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/"
            }
        },
        "SfMTransform_1": {
            "nodeType": "SfMTransform",
            "position": [
                1080,
                34
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 329,
                "split": 1
            },
            "uids": {
                "0": "5e55dff15ca8cd4492c1fc715c2b0926c6397445"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{StructureFromMotion_1.output}",
                "method": "manual",
                "transformation": "",
                "manualTransform": {
                    "manualTranslation": {
                        "x": 0.0,
                        "y": 0.0,
                        "z": 0.0
                    },
                    "manualRotation": {
                        "x": -11.87,
                        "y": 0.0,
                        "z": 0.0
                    },
                    "manualScale": 1.0
                },
                "landmarksDescriberTypes": [
                    "sift",
                    "dspsift",
                    "akaze"
                ],
                "scale": 1.0,
                "markers": [],
                "applyScale": true,
                "applyRotation": true,
                "applyTranslation": true,
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/sfm.abc",
                "outputViewsAndPoses": "{cache}/{nodeType}/{uid0}/cameras.sfm"
            }
        }
    }
}