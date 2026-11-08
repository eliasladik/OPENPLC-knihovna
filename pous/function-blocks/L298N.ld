FUNCTION_BLOCK L298N
  VAR_INPUT
    procenta : INT;
    FORWARD : BOOL;
    BACKWARDS : BOOL;
    E_STOP : BOOL;
  END_VAR
  VAR_OUTPUT
    pwm_out : UINT;
    IN1 : BOOL;
    IN2 : BOOL;
  END_VAR
  VAR
    CUSTOM_PWM_CTRL0 : CUSTOM_PWM_CTRL;
  END_VAR

{
  "name": "L298N",
  "rungs": [
    {
      "id": "rung_PWM_CTRL_1eecedf4-bd5a-42b3-837f-21f13010ff13",
      "comment": "",
      "defaultBounds": [
        300,
        100
      ],
      "reactFlowViewport": [
        771,
        306
      ],
      "nodes": [
        {
          "id": "left-rail-rung_PWM_CTRL_1eecedf4-bd5a-42b3-837f-21f13010ff13",
          "type": "powerRail",
          "position": {
            "x": 0,
            "y": 30
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 3,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "left-rail",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "right": -3
                }
              },
              {
                "glbPosition": {
                  "x": 3,
                  "y": 170
                },
                "relPosition": {
                  "x": 3,
                  "y": 140
                },
                "id": "branch_BLOCK_3f8ae180-45d4-41f4-99dc-21e8066ecd80_povoleni",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 140,
                  "right": -3
                }
              }
            ],
            "inputHandles": [],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 3,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "left-rail",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "right": -3
                }
              },
              {
                "glbPosition": {
                  "x": 3,
                  "y": 170
                },
                "relPosition": {
                  "x": 3,
                  "y": 140
                },
                "id": "branch_BLOCK_3f8ae180-45d4-41f4-99dc-21e8066ecd80_povoleni",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 140,
                  "right": -3
                }
              }
            ],
            "outputConnector": {
              "glbPosition": {
                "x": 3,
                "y": 50
              },
              "relPosition": {
                "x": 3,
                "y": 20
              },
              "id": "left-rail",
              "position": "right",
              "type": "source",
              "isConnectable": false,
              "style": {
                "top": 20,
                "right": -3
              }
            },
            "numericId": "665809",
            "variant": "left",
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "draggable": false,
            "selectable": false,
            "deletable": false
          },
          "width": 3,
          "height": 40,
          "measured": {
            "width": 3,
            "height": 40
          },
          "draggable": false,
          "selectable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "CONTACT_336f019b-0fe3-4b52-b9d4-016fdd1e1fe8",
          "type": "contact",
          "position": {
            "x": 68,
            "y": 38
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 68,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              },
              {
                "glbPosition": {
                  "x": 92,
                  "y": 50
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "variant": "negated",
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 68,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 92,
                  "y": 50
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 68,
                "y": 50
              },
              "relPosition": {
                "x": 0,
                "y": 12
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target",
              "style": {
                "left": -3
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 92,
                "y": 50
              },
              "relPosition": {
                "x": 24,
                "y": 12
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source",
              "style": {
                "right": -3
              }
            },
            "numericId": "4169675",
            "variable": {
              "id": "8bf9d33c-92c0-435c-869e-873cbdf1f17f",
              "name": "E_STOP",
              "type": {
                "definition": "base-type",
                "value": "BOOL"
              },
              "class": "local",
              "location": "",
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "draggable": true,
            "selectable": true,
            "deletable": true
          },
          "width": 24,
          "height": 24,
          "measured": {
            "width": 24,
            "height": 24
          },
          "draggable": true,
          "selectable": true,
          "selected": false,
          "dragging": false
        },
        {
          "id": "BLOCK_3f8ae180-45d4-41f4-99dc-21e8066ecd80",
          "type": "block",
          "position": {
            "x": 310,
            "y": 14
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 310,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 36
                },
                "id": "EN",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 310,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 76
                },
                "id": "procenta",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 310,
                  "y": 170
                },
                "relPosition": {
                  "x": 0,
                  "y": 156
                },
                "id": "povoleni",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 156,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 508,
                  "y": 50
                },
                "relPosition": {
                  "x": 198,
                  "y": 36
                },
                "id": "ENO",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "right": 0
                }
              },
              {
                "glbPosition": {
                  "x": 508,
                  "y": 90
                },
                "relPosition": {
                  "x": 198,
                  "y": 76
                },
                "id": "pwm_out",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "right": 0
                }
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 310,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 36
                },
                "id": "EN",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 310,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 76
                },
                "id": "procenta",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "left": 0
                }
              },
              {
                "glbPosition": {
                  "x": 310,
                  "y": 170
                },
                "relPosition": {
                  "x": 0,
                  "y": 156
                },
                "id": "povoleni",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 156,
                  "left": 0
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 508,
                  "y": 50
                },
                "relPosition": {
                  "x": 198,
                  "y": 36
                },
                "id": "ENO",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 36,
                  "right": 0
                }
              },
              {
                "glbPosition": {
                  "x": 508,
                  "y": 90
                },
                "relPosition": {
                  "x": 198,
                  "y": 76
                },
                "id": "pwm_out",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 76,
                  "right": 0
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 310,
                "y": 50
              },
              "relPosition": {
                "x": 0,
                "y": 36
              },
              "id": "EN",
              "position": "left",
              "type": "target",
              "isConnectable": false,
              "style": {
                "top": 36,
                "left": 0
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 508,
                "y": 50
              },
              "relPosition": {
                "x": 198,
                "y": 36
              },
              "id": "ENO",
              "position": "right",
              "type": "source",
              "isConnectable": false,
              "style": {
                "top": 36,
                "right": 0
              }
            },
            "numericId": "6753344",
            "variant": {
              "name": "CUSTOM_PWM_CTRL",
              "type": "function-block",
              "variables": [
                {
                  "name": "EN",
                  "class": "input",
                  "type": {
                    "definition": "generic-type",
                    "value": "BOOL"
                  }
                },
                {
                  "name": "ENO",
                  "class": "output",
                  "type": {
                    "definition": "generic-type",
                    "value": "BOOL"
                  }
                },
                {
                  "name": "procenta",
                  "class": "input",
                  "type": {
                    "definition": "base-type",
                    "value": "INT"
                  }
                },
                {
                  "name": "povoleni",
                  "class": "input",
                  "type": {
                    "definition": "base-type",
                    "value": "BOOL"
                  }
                },
                {
                  "name": "pomocna_procenta",
                  "class": "local",
                  "type": {
                    "definition": "base-type",
                    "value": "UINT"
                  }
                },
                {
                  "name": "pomocna_zacatek",
                  "class": "local",
                  "type": {
                    "definition": "base-type",
                    "value": "UINT"
                  }
                },
                {
                  "name": "pomocna_out",
                  "class": "local",
                  "type": {
                    "definition": "base-type",
                    "value": "UINT"
                  }
                },
                {
                  "name": "pwm_out",
                  "class": "output",
                  "type": {
                    "definition": "base-type",
                    "value": "UINT"
                  }
                }
              ],
              "documentation": "",
              "extensible": false
            },
            "variable": {
              "id": "d5d12e64-690b-4a89-a4d1-4aa98086e158",
              "name": "CUSTOM_PWM_CTRL0",
              "type": {
                "definition": "derived",
                "value": "CUSTOM_PWM_CTRL"
              },
              "class": "local",
              "location": "",
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "executionControl": true,
            "lockExecutionControl": true,
            "connectedVariables": [
              {
                "handleId": "pwm_out",
                "type": "output",
                "variable": {
                  "name": "pwm_out",
                  "class": "output",
                  "type": {
                    "definition": "base-type",
                    "value": "UINT"
                  },
                  "location": "",
                  "initialValue": null,
                  "documentation": "",
                  "debug": false
                }
              },
              {
                "handleId": "procenta",
                "type": "input",
                "variable": {
                  "name": "procenta",
                  "class": "input",
                  "type": {
                    "definition": "base-type",
                    "value": "INT"
                  },
                  "location": "",
                  "initialValue": null,
                  "documentation": "",
                  "debug": false
                }
              }
            ],
            "draggable": true,
            "selectable": true,
            "deletable": true
          },
          "width": 198,
          "height": 180,
          "measured": {
            "width": 198,
            "height": 180
          },
          "draggable": true,
          "selectable": true,
          "selected": false,
          "dragging": false
        },
        {
          "id": "CONTACT_f670818a-9b5a-414e-8c7b-27ebcddba7aa",
          "type": "contact",
          "position": {
            "x": 117,
            "y": 158
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 117,
                  "y": 170
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              },
              {
                "glbPosition": {
                  "x": 141,
                  "y": 170
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "variant": "default",
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 117,
                  "y": 170
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 141,
                  "y": 170
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 117,
                "y": 170
              },
              "relPosition": {
                "x": 0,
                "y": 12
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target",
              "style": {
                "left": -3
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 141,
                "y": 170
              },
              "relPosition": {
                "x": 24,
                "y": 12
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source",
              "style": {
                "right": -3
              }
            },
            "numericId": "1529835",
            "variable": {
              "id": "",
              "name": "FORWARD",
              "type": {
                "definition": "base-type",
                "value": "BOOL"
              },
              "class": "local",
              "location": "",
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "draggable": true,
            "selectable": true,
            "deletable": true,
            "branchContext": {
              "blockId": "BLOCK_3f8ae180-45d4-41f4-99dc-21e8066ecd80",
              "handleId": "povoleni",
              "direction": "input"
            }
          },
          "width": 24,
          "height": 24,
          "measured": {
            "width": 24,
            "height": 24
          },
          "draggable": true,
          "selectable": true,
          "selected": false,
          "dragging": false
        },
        {
          "id": "PARALLEL_OPEN_a4b1cfd7-44b9-4205-8e34-97e0b8bbae43",
          "type": "parallel",
          "position": {
            "x": 68,
            "y": 169
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 68,
                  "y": 170
                },
                "relPosition": {
                  "x": 0,
                  "y": 1
                },
                "id": "input",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "visibility": "hidden",
                  "left": 3
                }
              },
              {
                "glbPosition": {
                  "x": 68,
                  "y": 170
                },
                "relPosition": {
                  "x": 2,
                  "y": 0
                },
                "id": "input-top",
                "position": "top",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 1
                }
              },
              {
                "glbPosition": {
                  "x": 72,
                  "y": 170
                },
                "relPosition": {
                  "x": 4,
                  "y": 1
                },
                "id": "output-right",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "visibility": "hidden",
                  "right": 3
                }
              },
              {
                "glbPosition": {
                  "x": 72,
                  "y": 170
                },
                "relPosition": {
                  "x": 2,
                  "y": 2
                },
                "id": "output-down",
                "position": "bottom",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "bottom": 1
                }
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 68,
                  "y": 170
                },
                "relPosition": {
                  "x": 0,
                  "y": 1
                },
                "id": "input",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "visibility": "hidden",
                  "left": 3
                }
              },
              {
                "glbPosition": {
                  "x": 68,
                  "y": 170
                },
                "relPosition": {
                  "x": 2,
                  "y": 0
                },
                "id": "input-top",
                "position": "top",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 1
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 72,
                  "y": 170
                },
                "relPosition": {
                  "x": 4,
                  "y": 1
                },
                "id": "output-right",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "visibility": "hidden",
                  "right": 3
                }
              },
              {
                "glbPosition": {
                  "x": 72,
                  "y": 170
                },
                "relPosition": {
                  "x": 2,
                  "y": 2
                },
                "id": "output-down",
                "position": "bottom",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "bottom": 1
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 68,
                "y": 170
              },
              "relPosition": {
                "x": 0,
                "y": 1
              },
              "id": "input",
              "position": "left",
              "type": "target",
              "isConnectable": false,
              "style": {
                "visibility": "hidden",
                "left": 3
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 72,
                "y": 170
              },
              "relPosition": {
                "x": 4,
                "y": 1
              },
              "id": "output-right",
              "position": "right",
              "type": "source",
              "isConnectable": false,
              "style": {
                "visibility": "hidden",
                "right": 3
              }
            },
            "numericId": "9548678",
            "parallelInputConnector": {
              "glbPosition": {
                "x": 68,
                "y": 170
              },
              "relPosition": {
                "x": 2,
                "y": 0
              },
              "id": "input-top",
              "position": "top",
              "type": "target",
              "isConnectable": false,
              "style": {
                "top": 1
              }
            },
            "parallelOutputConnector": {
              "glbPosition": {
                "x": 72,
                "y": 170
              },
              "relPosition": {
                "x": 2,
                "y": 2
              },
              "id": "output-down",
              "position": "bottom",
              "type": "source",
              "isConnectable": false,
              "style": {
                "bottom": 1
              }
            },
            "parallelCloseReference": "PARALLEL_CLOSE_b6aa7b0f-f42c-433e-bb91-6d80c2cf0b44",
            "type": "open",
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "draggable": false,
            "selectable": false,
            "deletable": false,
            "branchContext": {
              "blockId": "BLOCK_3f8ae180-45d4-41f4-99dc-21e8066ecd80",
              "handleId": "povoleni",
              "direction": "input"
            }
          },
          "width": 4,
          "height": 2,
          "measured": {
            "width": 4,
            "height": 2
          },
          "draggable": false,
          "selectable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "CONTACT_1bd97f65-74cf-4541-880f-a16d39da046b",
          "type": "contact",
          "position": {
            "x": 117,
            "y": 262
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 117,
                  "y": 274
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              },
              {
                "glbPosition": {
                  "x": 141,
                  "y": 274
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "variant": "default",
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 117,
                  "y": 274
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 141,
                  "y": 274
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 117,
                "y": 274
              },
              "relPosition": {
                "x": 0,
                "y": 12
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target",
              "style": {
                "left": -3
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 141,
                "y": 274
              },
              "relPosition": {
                "x": 24,
                "y": 12
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source",
              "style": {
                "right": -3
              }
            },
            "numericId": "5127548",
            "variable": {
              "id": "",
              "name": "BACKWARDS",
              "type": {
                "definition": "base-type",
                "value": "BOOL"
              },
              "class": "local",
              "location": "",
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "draggable": true,
            "selectable": true,
            "deletable": true,
            "branchContext": {
              "blockId": "BLOCK_3f8ae180-45d4-41f4-99dc-21e8066ecd80",
              "handleId": "povoleni",
              "direction": "input"
            }
          },
          "width": 24,
          "height": 24,
          "measured": {
            "width": 24,
            "height": 24
          },
          "draggable": true,
          "selectable": true,
          "selected": false,
          "dragging": false
        },
        {
          "id": "PARALLEL_CLOSE_b6aa7b0f-f42c-433e-bb91-6d80c2cf0b44",
          "type": "parallel",
          "position": {
            "x": 186,
            "y": 169
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 186,
                  "y": 170
                },
                "relPosition": {
                  "x": 0,
                  "y": 1
                },
                "id": "input",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "visibility": "hidden",
                  "left": 3
                }
              },
              {
                "glbPosition": {
                  "x": 186,
                  "y": 170
                },
                "relPosition": {
                  "x": 2,
                  "y": 2
                },
                "id": "input-down",
                "position": "bottom",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "bottom": 1
                }
              },
              {
                "glbPosition": {
                  "x": 190,
                  "y": 170
                },
                "relPosition": {
                  "x": 4,
                  "y": 1
                },
                "id": "output-right",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "visibility": "hidden",
                  "right": 3
                }
              },
              {
                "glbPosition": {
                  "x": 190,
                  "y": 170
                },
                "relPosition": {
                  "x": 2,
                  "y": 0
                },
                "id": "output-top",
                "position": "top",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 1
                }
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 186,
                  "y": 170
                },
                "relPosition": {
                  "x": 0,
                  "y": 1
                },
                "id": "input",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "visibility": "hidden",
                  "left": 3
                }
              },
              {
                "glbPosition": {
                  "x": 186,
                  "y": 170
                },
                "relPosition": {
                  "x": 2,
                  "y": 2
                },
                "id": "input-down",
                "position": "bottom",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "bottom": 1
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 190,
                  "y": 170
                },
                "relPosition": {
                  "x": 4,
                  "y": 1
                },
                "id": "output-right",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "visibility": "hidden",
                  "right": 3
                }
              },
              {
                "glbPosition": {
                  "x": 190,
                  "y": 170
                },
                "relPosition": {
                  "x": 2,
                  "y": 0
                },
                "id": "output-top",
                "position": "top",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 1
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 186,
                "y": 170
              },
              "relPosition": {
                "x": 0,
                "y": 1
              },
              "id": "input",
              "position": "left",
              "type": "target",
              "isConnectable": false,
              "style": {
                "visibility": "hidden",
                "left": 3
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 190,
                "y": 170
              },
              "relPosition": {
                "x": 4,
                "y": 1
              },
              "id": "output-right",
              "position": "right",
              "type": "source",
              "isConnectable": false,
              "style": {
                "visibility": "hidden",
                "right": 3
              }
            },
            "numericId": "5069441",
            "parallelInputConnector": {
              "glbPosition": {
                "x": 186,
                "y": 170
              },
              "relPosition": {
                "x": 2,
                "y": 2
              },
              "id": "input-down",
              "position": "bottom",
              "type": "target",
              "isConnectable": false,
              "style": {
                "bottom": 1
              }
            },
            "parallelOutputConnector": {
              "glbPosition": {
                "x": 190,
                "y": 170
              },
              "relPosition": {
                "x": 2,
                "y": 0
              },
              "id": "output-top",
              "position": "top",
              "type": "source",
              "isConnectable": false,
              "style": {
                "top": 1
              }
            },
            "parallelOpenReference": "PARALLEL_OPEN_a4b1cfd7-44b9-4205-8e34-97e0b8bbae43",
            "type": "close",
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "draggable": false,
            "selectable": false,
            "deletable": false,
            "branchContext": {
              "blockId": "BLOCK_3f8ae180-45d4-41f4-99dc-21e8066ecd80",
              "handleId": "povoleni",
              "direction": "input"
            }
          },
          "width": 4,
          "height": 2,
          "measured": {
            "width": 4,
            "height": 2
          },
          "draggable": false,
          "selectable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "right-rail-rung_PWM_CTRL_1eecedf4-bd5a-42b3-837f-21f13010ff13",
          "type": "powerRail",
          "position": {
            "x": 768,
            "y": 30
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 297,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "right-rail",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "left": -3
                },
                "x": 768
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 297,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "right-rail",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "left": -3
                }
              }
            ],
            "outputHandles": [],
            "inputConnector": {
              "glbPosition": {
                "x": 297,
                "y": 50
              },
              "relPosition": {
                "x": 3,
                "y": 20
              },
              "id": "right-rail",
              "position": "left",
              "type": "target",
              "isConnectable": false,
              "style": {
                "top": 20,
                "left": -3
              }
            },
            "numericId": "10002566",
            "variant": "right",
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "draggable": false,
            "selectable": false,
            "deletable": false
          },
          "width": 3,
          "height": 40,
          "measured": {
            "width": 3,
            "height": 40
          },
          "draggable": false,
          "selectable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "VARIABLE_6372485b-a832-4c0f-8e5b-4150e75c5dc8",
          "type": "variable",
          "position": {
            "x": 200,
            "y": 74
          },
          "width": 80,
          "height": 32,
          "measured": {
            "width": 80,
            "height": 32
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 360,
                  "y": 90
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "inputHandles": [],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 360,
                  "y": 90
                },
                "relPosition": {
                  "x": 80,
                  "y": 16
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source"
              }
            ],
            "outputConnector": {
              "glbPosition": {
                "x": 360,
                "y": 90
              },
              "relPosition": {
                "x": 80,
                "y": 16
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source"
            },
            "numericId": "1938567",
            "variable": {
              "name": "procenta",
              "class": "input",
              "type": {
                "definition": "base-type",
                "value": "INT"
              },
              "location": "",
              "initialValue": null,
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "variant": "input",
            "block": {
              "id": "BLOCK_3f8ae180-45d4-41f4-99dc-21e8066ecd80",
              "handleId": "procenta",
              "variableType": {
                "name": "procenta",
                "class": "input",
                "type": {
                  "definition": "base-type",
                  "value": "INT"
                }
              }
            },
            "draggable": false,
            "selectable": true,
            "deletable": false
          },
          "deletable": false,
          "selectable": true,
          "draggable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "VARIABLE_1f3db866-8ad6-4f2e-afd3-fe156a00d66b",
          "type": "variable",
          "position": {
            "x": 538,
            "y": 74
          },
          "width": 80,
          "height": 32,
          "measured": {
            "width": 80,
            "height": 32
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 538,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 16
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target"
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 538,
                  "y": 90
                },
                "relPosition": {
                  "x": 0,
                  "y": 16
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target"
              }
            ],
            "outputHandles": [],
            "inputConnector": {
              "glbPosition": {
                "x": 538,
                "y": 90
              },
              "relPosition": {
                "x": 0,
                "y": 16
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target"
            },
            "numericId": "8732728",
            "variable": {
              "name": "pwm_out",
              "class": "output",
              "type": {
                "definition": "base-type",
                "value": "UINT"
              },
              "location": "",
              "initialValue": null,
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "variant": "output",
            "block": {
              "id": "BLOCK_3f8ae180-45d4-41f4-99dc-21e8066ecd80",
              "handleId": "pwm_out",
              "variableType": {
                "name": "pwm_out",
                "class": "output",
                "type": {
                  "definition": "base-type",
                  "value": "UINT"
                }
              }
            },
            "draggable": false,
            "selectable": true,
            "deletable": false
          },
          "deletable": false,
          "selectable": true,
          "draggable": false,
          "selected": false,
          "dragging": false
        }
      ],
      "edges": [
        {
          "id": "e_BLOCK_3f8ae180-45d4-41f4-99dc-21e8066ecd80_right-rail-rung_PWM_CTRL_1eecedf4-bd5a-42b3-837f-21f13010ff13__ENO_right-rail",
          "source": "BLOCK_3f8ae180-45d4-41f4-99dc-21e8066ecd80",
          "target": "right-rail-rung_PWM_CTRL_1eecedf4-bd5a-42b3-837f-21f13010ff13",
          "sourceHandle": "ENO",
          "targetHandle": "right-rail"
        },
        {
          "id": "e_left-rail-rung_PWM_CTRL_1eecedf4-bd5a-42b3-837f-21f13010ff13_PARALLEL_OPEN_a4b1cfd7-44b9-4205-8e34-97e0b8bbae43__branch_BLOCK_3f8ae180-45d4-41f4-99dc-21e8066ecd80_povoleni_input",
          "source": "left-rail-rung_PWM_CTRL_1eecedf4-bd5a-42b3-837f-21f13010ff13",
          "target": "PARALLEL_OPEN_a4b1cfd7-44b9-4205-8e34-97e0b8bbae43",
          "sourceHandle": "branch_BLOCK_3f8ae180-45d4-41f4-99dc-21e8066ecd80_povoleni",
          "targetHandle": "input"
        },
        {
          "id": "e_PARALLEL_OPEN_a4b1cfd7-44b9-4205-8e34-97e0b8bbae43_CONTACT_f670818a-9b5a-414e-8c7b-27ebcddba7aa__output-right_input",
          "source": "PARALLEL_OPEN_a4b1cfd7-44b9-4205-8e34-97e0b8bbae43",
          "target": "CONTACT_f670818a-9b5a-414e-8c7b-27ebcddba7aa",
          "sourceHandle": "output-right",
          "targetHandle": "input"
        },
        {
          "id": "e_PARALLEL_OPEN_a4b1cfd7-44b9-4205-8e34-97e0b8bbae43_CONTACT_1bd97f65-74cf-4541-880f-a16d39da046b__output-down_input",
          "source": "PARALLEL_OPEN_a4b1cfd7-44b9-4205-8e34-97e0b8bbae43",
          "target": "CONTACT_1bd97f65-74cf-4541-880f-a16d39da046b",
          "sourceHandle": "output-down",
          "targetHandle": "input"
        },
        {
          "id": "e_CONTACT_1bd97f65-74cf-4541-880f-a16d39da046b_PARALLEL_CLOSE_b6aa7b0f-f42c-433e-bb91-6d80c2cf0b44__output_input-down",
          "source": "CONTACT_1bd97f65-74cf-4541-880f-a16d39da046b",
          "target": "PARALLEL_CLOSE_b6aa7b0f-f42c-433e-bb91-6d80c2cf0b44",
          "sourceHandle": "output",
          "targetHandle": "input-down"
        },
        {
          "id": "e_PARALLEL_CLOSE_b6aa7b0f-f42c-433e-bb91-6d80c2cf0b44_BLOCK_3f8ae180-45d4-41f4-99dc-21e8066ecd80__output-right_povoleni",
          "source": "PARALLEL_CLOSE_b6aa7b0f-f42c-433e-bb91-6d80c2cf0b44",
          "target": "BLOCK_3f8ae180-45d4-41f4-99dc-21e8066ecd80",
          "sourceHandle": "output-right",
          "targetHandle": "povoleni"
        },
        {
          "id": "e_CONTACT_f670818a-9b5a-414e-8c7b-27ebcddba7aa_PARALLEL_CLOSE_b6aa7b0f-f42c-433e-bb91-6d80c2cf0b44__output_input",
          "source": "CONTACT_f670818a-9b5a-414e-8c7b-27ebcddba7aa",
          "target": "PARALLEL_CLOSE_b6aa7b0f-f42c-433e-bb91-6d80c2cf0b44",
          "sourceHandle": "output",
          "targetHandle": "input"
        },
        {
          "id": "e_left-rail-rung_PWM_CTRL_1eecedf4-bd5a-42b3-837f-21f13010ff13_CONTACT_336f019b-0fe3-4b52-b9d4-016fdd1e1fe8__left-rail_input",
          "source": "left-rail-rung_PWM_CTRL_1eecedf4-bd5a-42b3-837f-21f13010ff13",
          "target": "CONTACT_336f019b-0fe3-4b52-b9d4-016fdd1e1fe8",
          "sourceHandle": "left-rail",
          "targetHandle": "input"
        },
        {
          "id": "e_CONTACT_336f019b-0fe3-4b52-b9d4-016fdd1e1fe8_BLOCK_3f8ae180-45d4-41f4-99dc-21e8066ecd80__output_EN",
          "source": "CONTACT_336f019b-0fe3-4b52-b9d4-016fdd1e1fe8",
          "target": "BLOCK_3f8ae180-45d4-41f4-99dc-21e8066ecd80",
          "sourceHandle": "output",
          "targetHandle": "EN"
        },
        {
          "id": "e_VARIABLE_6372485b-a832-4c0f-8e5b-4150e75c5dc8_BLOCK_3f8ae180-45d4-41f4-99dc-21e8066ecd80__output_procenta",
          "source": "VARIABLE_6372485b-a832-4c0f-8e5b-4150e75c5dc8",
          "target": "BLOCK_3f8ae180-45d4-41f4-99dc-21e8066ecd80",
          "sourceHandle": "output",
          "targetHandle": "procenta"
        },
        {
          "id": "e_BLOCK_3f8ae180-45d4-41f4-99dc-21e8066ecd80_VARIABLE_1f3db866-8ad6-4f2e-afd3-fe156a00d66b__pwm_out_input",
          "source": "BLOCK_3f8ae180-45d4-41f4-99dc-21e8066ecd80",
          "target": "VARIABLE_1f3db866-8ad6-4f2e-afd3-fe156a00d66b",
          "sourceHandle": "pwm_out",
          "targetHandle": "input"
        }
      ],
      "selectedNodes": [],
      "handleBranches": [
        {
          "blockId": "BLOCK_3f8ae180-45d4-41f4-99dc-21e8066ecd80",
          "handleId": "povoleni",
          "direction": "input",
          "nodeIds": [
            "PARALLEL_OPEN_a4b1cfd7-44b9-4205-8e34-97e0b8bbae43",
            "CONTACT_f670818a-9b5a-414e-8c7b-27ebcddba7aa",
            "PARALLEL_CLOSE_b6aa7b0f-f42c-433e-bb91-6d80c2cf0b44"
          ]
        }
      ]
    },
    {
      "id": "rung_PWM_CTRL_copy_c1f183c1-19ad-4b1f-ae10-dfa04fd46129",
      "comment": "",
      "defaultBounds": [
        300,
        100
      ],
      "reactFlowViewport": [
        551,
        120
      ],
      "nodes": [
        {
          "id": "left-rail-rung_PWM_CTRL_copy_c1f183c1-19ad-4b1f-ae10-dfa04fd46129",
          "type": "powerRail",
          "position": {
            "x": 0,
            "y": 30
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 3,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "left-rail",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "right": -3
                }
              }
            ],
            "inputHandles": [],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 3,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "left-rail",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "right": -3
                }
              }
            ],
            "outputConnector": {
              "glbPosition": {
                "x": 3,
                "y": 50
              },
              "relPosition": {
                "x": 3,
                "y": 20
              },
              "id": "left-rail",
              "position": "right",
              "type": "source",
              "isConnectable": false,
              "style": {
                "top": 20,
                "right": -3
              }
            },
            "numericId": "3663643",
            "variant": "left",
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "draggable": false,
            "selectable": false,
            "deletable": false
          },
          "width": 3,
          "height": 40,
          "measured": {
            "width": 3,
            "height": 40
          },
          "draggable": false,
          "selectable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "CONTACT_09993b1a-7d26-4b98-be7a-f00cd31a9b68",
          "type": "contact",
          "position": {
            "x": 68,
            "y": 38
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 68,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              },
              {
                "glbPosition": {
                  "x": 92,
                  "y": 50
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "variant": "negated",
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 68,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 92,
                  "y": 50
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 68,
                "y": 50
              },
              "relPosition": {
                "x": 0,
                "y": 12
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target",
              "style": {
                "left": -3
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 92,
                "y": 50
              },
              "relPosition": {
                "x": 24,
                "y": 12
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source",
              "style": {
                "right": -3
              }
            },
            "numericId": "7449796",
            "variable": {
              "id": "",
              "name": "E_STOP",
              "type": {
                "definition": "base-type",
                "value": "BOOL"
              },
              "class": "local",
              "location": "",
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "draggable": true,
            "selectable": true,
            "deletable": true
          },
          "width": 24,
          "height": 24,
          "measured": {
            "width": 24,
            "height": 24
          },
          "draggable": true,
          "selectable": true,
          "selected": false,
          "dragging": false
        },
        {
          "id": "CONTACT_1bb2ca56-6afc-47d1-be90-7a0b9f280cdb",
          "type": "contact",
          "position": {
            "x": 182,
            "y": 38
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 182,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              },
              {
                "glbPosition": {
                  "x": 206,
                  "y": 50
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "variant": "default",
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 182,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 206,
                  "y": 50
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 182,
                "y": 50
              },
              "relPosition": {
                "x": 0,
                "y": 12
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target",
              "style": {
                "left": -3
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 206,
                "y": 50
              },
              "relPosition": {
                "x": 24,
                "y": 12
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source",
              "style": {
                "right": -3
              }
            },
            "numericId": "7300357",
            "variable": {
              "id": "deb977c2-0d9d-4421-b5f6-02f363a65868",
              "name": "FORWARD",
              "type": {
                "definition": "base-type",
                "value": "BOOL"
              },
              "class": "local",
              "location": "",
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "draggable": true,
            "selectable": true,
            "deletable": true
          },
          "width": 24,
          "height": 24,
          "measured": {
            "width": 24,
            "height": 24
          },
          "draggable": true,
          "selectable": true,
          "selected": false,
          "dragging": false
        },
        {
          "id": "CONTACT_ee1c8da7-74b9-4aa8-8573-fc97c8bb6882",
          "type": "contact",
          "position": {
            "x": 296,
            "y": 38
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 296,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              },
              {
                "glbPosition": {
                  "x": 320,
                  "y": 50
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "variant": "negated",
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 296,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 320,
                  "y": 50
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 296,
                "y": 50
              },
              "relPosition": {
                "x": 0,
                "y": 12
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target",
              "style": {
                "left": -3
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 320,
                "y": 50
              },
              "relPosition": {
                "x": 24,
                "y": 12
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source",
              "style": {
                "right": -3
              }
            },
            "numericId": "8111554",
            "variable": {
              "id": "dc97c8f4-1562-48d6-ae09-b496fe6d93f1",
              "name": "BACKWARDS",
              "type": {
                "definition": "base-type",
                "value": "BOOL"
              },
              "class": "local",
              "location": "",
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "draggable": true,
            "selectable": true,
            "deletable": true
          },
          "width": 24,
          "height": 24,
          "measured": {
            "width": 24,
            "height": 24
          },
          "draggable": true,
          "selectable": true,
          "selected": false,
          "dragging": false
        },
        {
          "id": "COIL_73c33448-0bb2-4ef7-b152-d72a16ea5b58",
          "type": "coil",
          "position": {
            "x": 410,
            "y": 38
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 410,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              },
              {
                "glbPosition": {
                  "x": 438,
                  "y": 50
                },
                "relPosition": {
                  "x": 28,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "variant": "default",
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 410,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 438,
                  "y": 50
                },
                "relPosition": {
                  "x": 28,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 410,
                "y": 50
              },
              "relPosition": {
                "x": 0,
                "y": 12
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target",
              "style": {
                "left": -3
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 438,
                "y": 50
              },
              "relPosition": {
                "x": 28,
                "y": 12
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source",
              "style": {
                "right": -3
              }
            },
            "numericId": "10216822",
            "variable": {
              "id": "03e87164-273d-4e2a-ae6a-0acb909a1bb9",
              "name": "IN1",
              "type": {
                "definition": "base-type",
                "value": "BOOL"
              },
              "class": "local",
              "location": "",
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "draggable": true,
            "selectable": true,
            "deletable": true
          },
          "width": 28,
          "height": 24,
          "measured": {
            "width": 28,
            "height": 24
          },
          "draggable": true,
          "selectable": true,
          "selected": false,
          "dragging": false
        },
        {
          "id": "right-rail-rung_PWM_CTRL_copy_c1f183c1-19ad-4b1f-ae10-dfa04fd46129",
          "type": "powerRail",
          "position": {
            "x": 548,
            "y": 30
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 297,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "right-rail",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "left": -3
                },
                "x": 548
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 297,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "right-rail",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "left": -3
                }
              }
            ],
            "outputHandles": [],
            "inputConnector": {
              "glbPosition": {
                "x": 297,
                "y": 50
              },
              "relPosition": {
                "x": 3,
                "y": 20
              },
              "id": "right-rail",
              "position": "left",
              "type": "target",
              "isConnectable": false,
              "style": {
                "top": 20,
                "left": -3
              }
            },
            "numericId": "7231695",
            "variant": "right",
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "draggable": false,
            "selectable": false,
            "deletable": false
          },
          "width": 3,
          "height": 40,
          "measured": {
            "width": 3,
            "height": 40
          },
          "draggable": false,
          "selectable": false,
          "selected": false,
          "dragging": false
        }
      ],
      "edges": [
        {
          "id": "e_CONTACT_1bb2ca56-6afc-47d1-be90-7a0b9f280cdb_CONTACT_ee1c8da7-74b9-4aa8-8573-fc97c8bb6882__output_input",
          "source": "CONTACT_1bb2ca56-6afc-47d1-be90-7a0b9f280cdb",
          "target": "CONTACT_ee1c8da7-74b9-4aa8-8573-fc97c8bb6882",
          "sourceHandle": "output",
          "targetHandle": "input"
        },
        {
          "id": "e_CONTACT_ee1c8da7-74b9-4aa8-8573-fc97c8bb6882_COIL_73c33448-0bb2-4ef7-b152-d72a16ea5b58__output_input",
          "source": "CONTACT_ee1c8da7-74b9-4aa8-8573-fc97c8bb6882",
          "target": "COIL_73c33448-0bb2-4ef7-b152-d72a16ea5b58",
          "sourceHandle": "output",
          "targetHandle": "input"
        },
        {
          "id": "e_COIL_73c33448-0bb2-4ef7-b152-d72a16ea5b58_right-rail-rung_PWM_CTRL_copy_c1f183c1-19ad-4b1f-ae10-dfa04fd46129__output_right-rail",
          "source": "COIL_73c33448-0bb2-4ef7-b152-d72a16ea5b58",
          "target": "right-rail-rung_PWM_CTRL_copy_c1f183c1-19ad-4b1f-ae10-dfa04fd46129",
          "sourceHandle": "output",
          "targetHandle": "right-rail"
        },
        {
          "id": "e_left-rail-rung_PWM_CTRL_copy_c1f183c1-19ad-4b1f-ae10-dfa04fd46129_CONTACT_09993b1a-7d26-4b98-be7a-f00cd31a9b68__left-rail_input",
          "source": "left-rail-rung_PWM_CTRL_copy_c1f183c1-19ad-4b1f-ae10-dfa04fd46129",
          "target": "CONTACT_09993b1a-7d26-4b98-be7a-f00cd31a9b68",
          "sourceHandle": "left-rail",
          "targetHandle": "input"
        },
        {
          "id": "e_CONTACT_09993b1a-7d26-4b98-be7a-f00cd31a9b68_CONTACT_1bb2ca56-6afc-47d1-be90-7a0b9f280cdb__output_input",
          "source": "CONTACT_09993b1a-7d26-4b98-be7a-f00cd31a9b68",
          "target": "CONTACT_1bb2ca56-6afc-47d1-be90-7a0b9f280cdb",
          "sourceHandle": "output",
          "targetHandle": "input"
        }
      ],
      "selectedNodes": [],
      "handleBranches": []
    },
    {
      "id": "rung_PWM_CTRL_copy_5f7d08e4-8229-4f28-b3f4-2ffb05416a88",
      "comment": "",
      "defaultBounds": [
        300,
        100
      ],
      "reactFlowViewport": [
        551,
        120
      ],
      "selectedNodes": [],
      "nodes": [
        {
          "id": "left-rail-rung_PWM_CTRL_copy_c1f183c1-19ad-4b1f-ae10-dfa04fd46129",
          "type": "powerRail",
          "position": {
            "x": 0,
            "y": 30
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 3,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "left-rail",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "right": -3
                }
              }
            ],
            "inputHandles": [],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 3,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "left-rail",
                "position": "right",
                "type": "source",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "right": -3
                }
              }
            ],
            "outputConnector": {
              "glbPosition": {
                "x": 3,
                "y": 50
              },
              "relPosition": {
                "x": 3,
                "y": 20
              },
              "id": "left-rail",
              "position": "right",
              "type": "source",
              "isConnectable": false,
              "style": {
                "top": 20,
                "right": -3
              }
            },
            "numericId": "7790065",
            "variant": "left",
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "draggable": false,
            "selectable": false,
            "deletable": false
          },
          "width": 3,
          "height": 40,
          "measured": {
            "width": 3,
            "height": 40
          },
          "draggable": false,
          "selectable": false,
          "selected": false,
          "dragging": false
        },
        {
          "id": "CONTACT_0b3abb45-eee5-45e9-93d3-dcc920f2ec5f",
          "type": "contact",
          "position": {
            "x": 68,
            "y": 38
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 68,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              },
              {
                "glbPosition": {
                  "x": 92,
                  "y": 50
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "variant": "negated",
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 68,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 92,
                  "y": 50
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 68,
                "y": 50
              },
              "relPosition": {
                "x": 0,
                "y": 12
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target",
              "style": {
                "left": -3
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 92,
                "y": 50
              },
              "relPosition": {
                "x": 24,
                "y": 12
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source",
              "style": {
                "right": -3
              }
            },
            "numericId": "9006506",
            "variable": {
              "id": "",
              "name": "E_STOP",
              "type": {
                "definition": "base-type",
                "value": "BOOL"
              },
              "class": "local",
              "location": "",
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "draggable": true,
            "selectable": true,
            "deletable": true
          },
          "width": 24,
          "height": 24,
          "measured": {
            "width": 24,
            "height": 24
          },
          "draggable": true,
          "selectable": true,
          "selected": false,
          "dragging": false
        },
        {
          "id": "CONTACT_58a8ad73-08ce-492c-a03d-046c905ab7c8",
          "type": "contact",
          "position": {
            "x": 182,
            "y": 38
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 182,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              },
              {
                "glbPosition": {
                  "x": 206,
                  "y": 50
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "variant": "negated",
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 182,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 206,
                  "y": 50
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 182,
                "y": 50
              },
              "relPosition": {
                "x": 0,
                "y": 12
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target",
              "style": {
                "left": -3
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 206,
                "y": 50
              },
              "relPosition": {
                "x": 24,
                "y": 12
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source",
              "style": {
                "right": -3
              }
            },
            "numericId": "3682854",
            "variable": {
              "id": "deb977c2-0d9d-4421-b5f6-02f363a65868",
              "name": "FORWARD",
              "type": {
                "definition": "base-type",
                "value": "BOOL"
              },
              "class": "local",
              "location": "",
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "draggable": true,
            "selectable": true,
            "deletable": true
          },
          "width": 24,
          "height": 24,
          "measured": {
            "width": 24,
            "height": 24
          },
          "draggable": true,
          "selectable": true,
          "selected": false,
          "dragging": false
        },
        {
          "id": "CONTACT_418baa21-3581-47b9-84a9-8ebe77e37fad",
          "type": "contact",
          "position": {
            "x": 296,
            "y": 38
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 296,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              },
              {
                "glbPosition": {
                  "x": 320,
                  "y": 50
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "variant": "default",
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 296,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 320,
                  "y": 50
                },
                "relPosition": {
                  "x": 24,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 296,
                "y": 50
              },
              "relPosition": {
                "x": 0,
                "y": 12
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target",
              "style": {
                "left": -3
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 320,
                "y": 50
              },
              "relPosition": {
                "x": 24,
                "y": 12
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source",
              "style": {
                "right": -3
              }
            },
            "numericId": "6482793",
            "variable": {
              "id": "dc97c8f4-1562-48d6-ae09-b496fe6d93f1",
              "name": "BACKWARDS",
              "type": {
                "definition": "base-type",
                "value": "BOOL"
              },
              "class": "local",
              "location": "",
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "draggable": true,
            "selectable": true,
            "deletable": true
          },
          "width": 24,
          "height": 24,
          "measured": {
            "width": 24,
            "height": 24
          },
          "draggable": true,
          "selectable": true,
          "selected": false,
          "dragging": false
        },
        {
          "id": "COIL_c259e272-ecf2-42eb-86c1-1e16241588d4",
          "type": "coil",
          "position": {
            "x": 410,
            "y": 38
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 410,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              },
              {
                "glbPosition": {
                  "x": 438,
                  "y": 50
                },
                "relPosition": {
                  "x": 28,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "variant": "default",
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 410,
                  "y": 50
                },
                "relPosition": {
                  "x": 0,
                  "y": 12
                },
                "id": "input",
                "position": "left",
                "isConnectable": false,
                "type": "target",
                "style": {
                  "left": -3
                }
              }
            ],
            "outputHandles": [
              {
                "glbPosition": {
                  "x": 438,
                  "y": 50
                },
                "relPosition": {
                  "x": 28,
                  "y": 12
                },
                "id": "output",
                "position": "right",
                "isConnectable": false,
                "type": "source",
                "style": {
                  "right": -3
                }
              }
            ],
            "inputConnector": {
              "glbPosition": {
                "x": 410,
                "y": 50
              },
              "relPosition": {
                "x": 0,
                "y": 12
              },
              "id": "input",
              "position": "left",
              "isConnectable": false,
              "type": "target",
              "style": {
                "left": -3
              }
            },
            "outputConnector": {
              "glbPosition": {
                "x": 438,
                "y": 50
              },
              "relPosition": {
                "x": 28,
                "y": 12
              },
              "id": "output",
              "position": "right",
              "isConnectable": false,
              "type": "source",
              "style": {
                "right": -3
              }
            },
            "numericId": "9879356",
            "variable": {
              "id": "b2e69d79-1e45-40b8-992c-a7184cf4ab52",
              "name": "IN2",
              "type": {
                "definition": "base-type",
                "value": "BOOL"
              },
              "class": "local",
              "location": "",
              "documentation": "",
              "debug": false
            },
            "executionOrder": 0,
            "draggable": true,
            "selectable": true,
            "deletable": true
          },
          "width": 28,
          "height": 24,
          "measured": {
            "width": 28,
            "height": 24
          },
          "draggable": true,
          "selectable": true,
          "selected": false,
          "dragging": false
        },
        {
          "id": "right-rail-rung_PWM_CTRL_copy_c1f183c1-19ad-4b1f-ae10-dfa04fd46129",
          "type": "powerRail",
          "position": {
            "x": 548,
            "y": 30
          },
          "data": {
            "handles": [
              {
                "glbPosition": {
                  "x": 297,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "right-rail",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "left": -3
                },
                "x": 548
              }
            ],
            "inputHandles": [
              {
                "glbPosition": {
                  "x": 297,
                  "y": 50
                },
                "relPosition": {
                  "x": 3,
                  "y": 20
                },
                "id": "right-rail",
                "position": "left",
                "type": "target",
                "isConnectable": false,
                "style": {
                  "top": 20,
                  "left": -3
                },
                "x": 434
              }
            ],
            "outputHandles": [],
            "inputConnector": {
              "glbPosition": {
                "x": 297,
                "y": 50
              },
              "relPosition": {
                "x": 3,
                "y": 20
              },
              "id": "right-rail",
              "position": "left",
              "type": "target",
              "isConnectable": false,
              "style": {
                "top": 20,
                "left": -3
              }
            },
            "numericId": "7573469",
            "variant": "right",
            "variable": {
              "name": ""
            },
            "executionOrder": 0,
            "draggable": false,
            "selectable": false,
            "deletable": false
          },
          "width": 3,
          "height": 40,
          "measured": {
            "width": 3,
            "height": 40
          },
          "draggable": false,
          "selectable": false,
          "selected": false,
          "dragging": false
        }
      ],
      "edges": [
        {
          "id": "e_CONTACT_58a8ad73-08ce-492c-a03d-046c905ab7c8_CONTACT_418baa21-3581-47b9-84a9-8ebe77e37fad__output_input",
          "source": "CONTACT_58a8ad73-08ce-492c-a03d-046c905ab7c8",
          "target": "CONTACT_418baa21-3581-47b9-84a9-8ebe77e37fad",
          "sourceHandle": "output",
          "targetHandle": "input"
        },
        {
          "id": "e_CONTACT_418baa21-3581-47b9-84a9-8ebe77e37fad_COIL_c259e272-ecf2-42eb-86c1-1e16241588d4__output_input",
          "source": "CONTACT_418baa21-3581-47b9-84a9-8ebe77e37fad",
          "target": "COIL_c259e272-ecf2-42eb-86c1-1e16241588d4",
          "sourceHandle": "output",
          "targetHandle": "input"
        },
        {
          "id": "e_COIL_c259e272-ecf2-42eb-86c1-1e16241588d4_right-rail-rung_PWM_CTRL_copy_c1f183c1-19ad-4b1f-ae10-dfa04fd46129__output_right-rail",
          "source": "COIL_c259e272-ecf2-42eb-86c1-1e16241588d4",
          "target": "right-rail-rung_PWM_CTRL_copy_c1f183c1-19ad-4b1f-ae10-dfa04fd46129",
          "sourceHandle": "output",
          "targetHandle": "right-rail"
        },
        {
          "id": "e_left-rail-rung_PWM_CTRL_copy_c1f183c1-19ad-4b1f-ae10-dfa04fd46129_CONTACT_0b3abb45-eee5-45e9-93d3-dcc920f2ec5f__left-rail_input",
          "source": "left-rail-rung_PWM_CTRL_copy_c1f183c1-19ad-4b1f-ae10-dfa04fd46129",
          "target": "CONTACT_0b3abb45-eee5-45e9-93d3-dcc920f2ec5f",
          "sourceHandle": "left-rail",
          "targetHandle": "input"
        },
        {
          "id": "e_CONTACT_0b3abb45-eee5-45e9-93d3-dcc920f2ec5f_CONTACT_58a8ad73-08ce-492c-a03d-046c905ab7c8__output_input",
          "source": "CONTACT_0b3abb45-eee5-45e9-93d3-dcc920f2ec5f",
          "target": "CONTACT_58a8ad73-08ce-492c-a03d-046c905ab7c8",
          "sourceHandle": "output",
          "targetHandle": "input"
        }
      ],
      "handleBranches": []
    }
  ]
}
END_FUNCTION_BLOCK