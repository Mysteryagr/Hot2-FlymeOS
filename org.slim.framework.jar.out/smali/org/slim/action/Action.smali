.class public Lorg/slim/action/Action;
.super Ljava/lang/Object;
.source "Action.java"


# static fields
.field private static final MSG_INJECT_KEY_DOWN:I = 0x42a

.field private static final MSG_INJECT_KEY_UP:I = 0x42b

.field private static mContext:Landroid/content/Context;

.field private static sTorchEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    sput-boolean v0, Lorg/slim/action/Action;->sTorchEnabled:Z

    .line 54
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static dispatchMediaKeyWithWakeLock(ILandroid/content/Context;)V
    .locals 10
    .param p0, "keycode"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x1

    .line 366
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    new-instance v1, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 368
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move v7, p0

    move v8, v6

    .line 367
    invoke-direct/range {v1 .. v8}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 369
    .local v1, "event":Landroid/view/KeyEvent;
    invoke-static {p1}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    invoke-virtual {v0, v1, v9}, Landroid/media/session/MediaSessionLegacyHelper;->sendMediaButtonEvent(Landroid/view/KeyEvent;Z)V

    .line 370
    invoke-static {v1, v9}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v1

    .line 371
    invoke-static {p1}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    invoke-virtual {v0, v1, v9}, Landroid/media/session/MediaSessionLegacyHelper;->sendMediaButtonEvent(Landroid/view/KeyEvent;Z)V

    .line 365
    .end local v1    # "event":Landroid/view/KeyEvent;
    :cond_0
    return-void
.end method

.method public static isActionKeyEvent(Ljava/lang/String;)Z
    .locals 1
    .param p0, "action"    # Ljava/lang/String;

    .prologue
    .line 327
    const-string/jumbo v0, "**home**"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 328
    const-string/jumbo v0, "**back**"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 327
    if-nez v0, :cond_0

    .line 329
    const-string/jumbo v0, "**search**"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 327
    if-nez v0, :cond_0

    .line 330
    const-string/jumbo v0, "**menu**"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 327
    if-nez v0, :cond_0

    .line 331
    const-string/jumbo v0, "**null**"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 327
    if-eqz v0, :cond_1

    .line 332
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 334
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static processAction(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "isLongpress"    # Z

    .prologue
    .line 64
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/slim/action/Action;->processActionWithOptions(Landroid/content/Context;Ljava/lang/String;ZZ)V

    .line 63
    return-void
.end method

.method public static processActionWithOptions(Landroid/content/Context;Ljava/lang/String;ZZ)V
    .locals 27
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "isLongpress"    # Z
    .param p3, "collapseShade"    # Z

    .prologue
    .line 70
    sput-object p0, Lorg/slim/action/Action;->mContext:Landroid/content/Context;

    .line 72
    if-eqz p1, :cond_0

    const-string/jumbo v23, "**null**"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1

    .line 73
    :cond_0
    return-void

    .line 76
    :cond_1
    const/4 v15, 0x0

    .line 79
    .local v15, "isKeyguardShowing":Z
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Landroid/view/IWindowManager;->isKeyguardLocked()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v15

    .line 85
    .end local v15    # "isKeyguardShowing":Z
    :goto_0
    const-string/jumbo v23, "statusbar"

    invoke-static/range {v23 .. v23}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v23

    .line 84
    invoke-static/range {v23 .. v23}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v5

    .line 86
    .local v5, "barService":Lcom/android/internal/statusbar/IStatusBarService;
    if-nez v5, :cond_2

    .line 87
    return-void

    .line 80
    .end local v5    # "barService":Lcom/android/internal/statusbar/IStatusBarService;
    .restart local v15    # "isKeyguardShowing":Z
    :catch_0
    move-exception v11

    .line 81
    .local v11, "e":Landroid/os/RemoteException;
    const-string/jumbo v23, "Action"

    const-string/jumbo v24, "Error getting window manager service"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 91
    .end local v11    # "e":Landroid/os/RemoteException;
    .end local v15    # "isKeyguardShowing":Z
    .restart local v5    # "barService":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_2
    const-string/jumbo v23, "window"

    invoke-static/range {v23 .. v23}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v23

    .line 90
    invoke-static/range {v23 .. v23}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v22

    .line 92
    .local v22, "windowManagerService":Landroid/view/IWindowManager;
    if-nez v22, :cond_3

    .line 93
    return-void

    .line 96
    :cond_3
    const/4 v14, 0x0

    .line 98
    .local v14, "isKeyguardSecure":Z
    :try_start_1
    invoke-interface/range {v22 .. v22}, Landroid/view/IWindowManager;->isKeyguardSecure()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v14

    .line 103
    .end local v14    # "isKeyguardSecure":Z
    :goto_1
    const-string/jumbo v23, "**home**"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_4

    .line 104
    const/16 v23, 0x3

    move/from16 v0, v23

    move/from16 v1, p2

    invoke-static {v0, v1}, Lorg/slim/action/Action;->triggerVirtualKeypress(IZ)V

    .line 105
    return-void

    .line 99
    .restart local v14    # "isKeyguardSecure":Z
    :catch_1
    move-exception v11

    .restart local v11    # "e":Landroid/os/RemoteException;
    goto :goto_1

    .line 106
    .end local v11    # "e":Landroid/os/RemoteException;
    .end local v14    # "isKeyguardSecure":Z
    :cond_4
    const-string/jumbo v23, "**back**"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_5

    .line 107
    const/16 v23, 0x4

    move/from16 v0, v23

    move/from16 v1, p2

    invoke-static {v0, v1}, Lorg/slim/action/Action;->triggerVirtualKeypress(IZ)V

    .line 108
    return-void

    .line 109
    :cond_5
    const-string/jumbo v23, "**search**"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_6

    .line 110
    const/16 v23, 0x54

    move/from16 v0, v23

    move/from16 v1, p2

    invoke-static {v0, v1}, Lorg/slim/action/Action;->triggerVirtualKeypress(IZ)V

    .line 111
    return-void

    .line 112
    :cond_6
    const-string/jumbo v23, "**notifications**"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_8

    .line 113
    if-eqz v15, :cond_7

    if-eqz v14, :cond_7

    .line 114
    return-void

    .line 117
    :cond_7
    :try_start_2
    invoke-interface {v5}, Lcom/android/internal/statusbar/IStatusBarService;->expandNotificationsPanel()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 120
    :goto_2
    return-void

    .line 118
    :catch_2
    move-exception v11

    .restart local v11    # "e":Landroid/os/RemoteException;
    goto :goto_2

    .line 121
    .end local v11    # "e":Landroid/os/RemoteException;
    :cond_8
    const-string/jumbo v23, "**settings_panel**"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_a

    .line 122
    if-eqz v15, :cond_9

    if-eqz v14, :cond_9

    .line 123
    return-void

    .line 126
    :cond_9
    :try_start_3
    invoke-interface {v5}, Lcom/android/internal/statusbar/IStatusBarService;->expandSettingsPanel()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 68
    :goto_3
    return-void

    .line 127
    :catch_3
    move-exception v11

    .restart local v11    # "e":Landroid/os/RemoteException;
    goto :goto_3

    .line 128
    .end local v11    # "e":Landroid/os/RemoteException;
    :cond_a
    const-string/jumbo v23, "**nowontap**"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_b

    .line 130
    :try_start_4
    new-instance v23, Landroid/os/Bundle;

    invoke-direct/range {v23 .. v23}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v23

    invoke-interface {v5, v0}, Lcom/android/internal/statusbar/IStatusBarService;->startAssist(Landroid/os/Bundle;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_3

    .line 131
    :catch_4
    move-exception v11

    .restart local v11    # "e":Landroid/os/RemoteException;
    goto :goto_3

    .line 132
    .end local v11    # "e":Landroid/os/RemoteException;
    :cond_b
    const-string/jumbo v23, "**torch**"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_10

    .line 135
    :try_start_5
    const-string/jumbo v23, "camera"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 134
    check-cast v7, Landroid/hardware/camera2/CameraManager;

    .line 136
    .local v7, "cameraManager":Landroid/hardware/camera2/CameraManager;
    invoke-virtual {v7}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v25

    const/16 v23, 0x0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v24, v23

    :goto_4
    move/from16 v0, v24

    move/from16 v1, v26

    if-ge v0, v1, :cond_f

    aget-object v6, v25, v24

    .line 138
    .local v6, "cameraId":Ljava/lang/String;
    invoke-virtual {v7, v6}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v8

    .line 139
    .local v8, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    sget-object v23, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 140
    .local v16, "orient":I
    const/16 v23, 0x1

    move/from16 v0, v16

    move/from16 v1, v23

    if-ne v0, v1, :cond_c

    .line 141
    sget-boolean v23, Lorg/slim/action/Action;->sTorchEnabled:Z

    if-eqz v23, :cond_d

    const/16 v23, 0x0

    :goto_5
    move/from16 v0, v23

    invoke-virtual {v7, v6, v0}, Landroid/hardware/camera2/CameraManager;->setTorchMode(Ljava/lang/String;Z)V

    .line 142
    sget-boolean v23, Lorg/slim/action/Action;->sTorchEnabled:Z

    if-eqz v23, :cond_e

    const/16 v23, 0x0

    :goto_6
    sput-boolean v23, Lorg/slim/action/Action;->sTorchEnabled:Z
    :try_end_5
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_5 .. :try_end_5} :catch_5

    .line 136
    :cond_c
    add-int/lit8 v23, v24, 0x1

    move/from16 v24, v23

    goto :goto_4

    .line 141
    :cond_d
    const/16 v23, 0x1

    goto :goto_5

    .line 142
    :cond_e
    const/16 v23, 0x1

    goto :goto_6

    .line 145
    .end local v6    # "cameraId":Ljava/lang/String;
    .end local v7    # "cameraManager":Landroid/hardware/camera2/CameraManager;
    .end local v8    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v16    # "orient":I
    :catch_5
    move-exception v10

    .line 147
    :cond_f
    return-void

    .line 148
    :cond_10
    const-string/jumbo v23, "**power_menu**"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_11

    .line 150
    :try_start_6
    invoke-interface/range {v22 .. v22}, Landroid/view/IWindowManager;->toggleGlobalMenu()V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_6

    .line 153
    :goto_7
    return-void

    .line 151
    :catch_6
    move-exception v11

    .restart local v11    # "e":Landroid/os/RemoteException;
    goto :goto_7

    .line 154
    .end local v11    # "e":Landroid/os/RemoteException;
    :cond_11
    const-string/jumbo v23, "**menu**"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_12

    .line 155
    const/16 v23, 0x52

    move/from16 v0, v23

    move/from16 v1, p2

    invoke-static {v0, v1}, Lorg/slim/action/Action;->triggerVirtualKeypress(IZ)V

    .line 156
    return-void

    .line 157
    :cond_12
    const-string/jumbo v23, "**ime_nav_left**"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_13

    .line 158
    const/16 v23, 0x15

    move/from16 v0, v23

    move/from16 v1, p2

    invoke-static {v0, v1}, Lorg/slim/action/Action;->triggerVirtualKeypress(IZ)V

    .line 159
    return-void

    .line 160
    :cond_13
    const-string/jumbo v23, "**ime_nav_right**"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_14

    .line 161
    const/16 v23, 0x16

    move/from16 v0, v23

    move/from16 v1, p2

    invoke-static {v0, v1}, Lorg/slim/action/Action;->triggerVirtualKeypress(IZ)V

    .line 162
    return-void

    .line 163
    :cond_14
    const-string/jumbo v23, "**ime_nav_up**"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_15

    .line 164
    const/16 v23, 0x13

    move/from16 v0, v23

    move/from16 v1, p2

    invoke-static {v0, v1}, Lorg/slim/action/Action;->triggerVirtualKeypress(IZ)V

    .line 165
    return-void

    .line 166
    :cond_15
    const-string/jumbo v23, "**ime_nav_down**"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_16

    .line 167
    const/16 v23, 0x14

    move/from16 v0, v23

    move/from16 v1, p2

    invoke-static {v0, v1}, Lorg/slim/action/Action;->triggerVirtualKeypress(IZ)V

    .line 168
    return-void

    .line 169
    :cond_16
    const-string/jumbo v23, "**power**"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_17

    .line 170
    const-string/jumbo v23, "power"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/os/PowerManager;

    .line 171
    .local v17, "pm":Landroid/os/PowerManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    move-object/from16 v0, v17

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 172
    return-void

    .line 173
    .end local v17    # "pm":Landroid/os/PowerManager;
    :cond_17
    const-string/jumbo v23, "**ime**"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_19

    .line 174
    if-eqz v15, :cond_18

    .line 175
    return-void

    .line 178
    :cond_18
    new-instance v23, Landroid/content/Intent;

    const-string/jumbo v24, "android.settings.SHOW_INPUT_METHOD_PICKER"

    invoke-direct/range {v23 .. v24}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 179
    new-instance v24, Landroid/os/UserHandle;

    const/16 v25, -0x2

    invoke-direct/range {v24 .. v25}, Landroid/os/UserHandle;-><init>(I)V

    .line 177
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 180
    return-void

    .line 181
    :cond_19
    const-string/jumbo v23, "**kill**"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1b

    .line 182
    if-eqz v15, :cond_1a

    .line 183
    return-void

    .line 186
    :cond_1a
    :try_start_7
    invoke-interface {v5}, Lcom/android/internal/statusbar/IStatusBarService;->toggleKillApp()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_7

    .line 189
    :goto_8
    return-void

    .line 187
    :catch_7
    move-exception v11

    .restart local v11    # "e":Landroid/os/RemoteException;
    goto :goto_8

    .line 190
    .end local v11    # "e":Landroid/os/RemoteException;
    :cond_1b
    const-string/jumbo v23, "**lastapp**"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1d

    .line 191
    if-eqz v15, :cond_1c

    .line 192
    return-void

    .line 195
    :cond_1c
    :try_start_8
    invoke-interface {v5}, Lcom/android/internal/statusbar/IStatusBarService;->toggleLastApp()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_8

    .line 198
    :goto_9
    return-void

    .line 196
    :catch_8
    move-exception v11

    .restart local v11    # "e":Landroid/os/RemoteException;
    goto :goto_9

    .line 199
    .end local v11    # "e":Landroid/os/RemoteException;
    :cond_1d
    const-string/jumbo v23, "**screenshot**"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1e

    .line 201
    :try_start_9
    invoke-interface {v5}, Lcom/android/internal/statusbar/IStatusBarService;->toggleScreenshot()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_9

    .line 204
    :goto_a
    return-void

    .line 202
    :catch_9
    move-exception v11

    .restart local v11    # "e":Landroid/os/RemoteException;
    goto :goto_a

    .line 205
    .end local v11    # "e":Landroid/os/RemoteException;
    :cond_1e
    const-string/jumbo v23, "**recents**"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_20

    .line 206
    if-eqz v15, :cond_1f

    .line 207
    return-void

    .line 210
    :cond_1f
    :try_start_a
    invoke-interface {v5}, Lcom/android/internal/statusbar/IStatusBarService;->toggleRecentApps()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_a

    .line 213
    :goto_b
    return-void

    .line 211
    :catch_a
    move-exception v11

    .restart local v11    # "e":Landroid/os/RemoteException;
    goto :goto_b

    .line 214
    .end local v11    # "e":Landroid/os/RemoteException;
    :cond_20
    const-string/jumbo v23, "**voice_search**"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_22

    .line 216
    new-instance v13, Landroid/content/Intent;

    const-string/jumbo v23, "android.intent.action.SEARCH_LONG_PRESS"

    move-object/from16 v0, v23

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 217
    .local v13, "intent":Landroid/content/Intent;
    const/high16 v23, 0x10000000

    move/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 222
    :try_start_b
    const-string/jumbo v23, "search"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/app/SearchManager;

    .line 223
    .local v19, "searchManager":Landroid/app/SearchManager;
    if-eqz v19, :cond_21

    .line 224
    invoke-virtual/range {v19 .. v19}, Landroid/app/SearchManager;->stopSearch()V

    .line 226
    :cond_21
    move-object/from16 v0, p0

    invoke-static {v0, v13, v5, v15}, Lorg/slim/action/Action;->startActivity(Landroid/content/Context;Landroid/content/Intent;Lcom/android/internal/statusbar/IStatusBarService;Z)V
    :try_end_b
    .catch Landroid/content/ActivityNotFoundException; {:try_start_b .. :try_end_b} :catch_b

    .line 230
    .end local v19    # "searchManager":Landroid/app/SearchManager;
    :goto_c
    return-void

    .line 227
    :catch_b
    move-exception v9

    .line 228
    .local v9, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v23, "Action:"

    const-string/jumbo v24, "No activity to handle assist long press action."

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    .line 231
    .end local v9    # "e":Landroid/content/ActivityNotFoundException;
    .end local v13    # "intent":Landroid/content/Intent;
    :cond_22
    const-string/jumbo v23, "**ring_vib**"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_25

    .line 232
    const-string/jumbo v23, "audio"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    .line 233
    .local v4, "am":Landroid/media/AudioManager;
    if-eqz v4, :cond_23

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v23

    if-eqz v23, :cond_23

    .line 234
    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_24

    .line 235
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 236
    const-string/jumbo v23, "vibrator"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/os/Vibrator;

    .line 237
    .local v21, "vib":Landroid/os/Vibrator;
    if-eqz v21, :cond_23

    .line 238
    const-wide/16 v24, 0x32

    move-object/from16 v0, v21

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 250
    .end local v21    # "vib":Landroid/os/Vibrator;
    :cond_23
    :goto_d
    return-void

    .line 241
    :cond_24
    const/16 v23, 0x2

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 242
    new-instance v20, Landroid/media/ToneGenerator;

    .line 243
    const/16 v23, 0x5

    .line 244
    const/16 v24, 0x55

    .line 242
    move-object/from16 v0, v20

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Landroid/media/ToneGenerator;-><init>(II)V

    .line 245
    .local v20, "tg":Landroid/media/ToneGenerator;
    if-eqz v20, :cond_23

    .line 246
    const/16 v23, 0x18

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/media/ToneGenerator;->startTone(I)Z

    goto :goto_d

    .line 251
    .end local v4    # "am":Landroid/media/AudioManager;
    .end local v20    # "tg":Landroid/media/ToneGenerator;
    :cond_25
    const-string/jumbo v23, "**ring_silent**"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_28

    .line 252
    const-string/jumbo v23, "audio"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    .line 253
    .restart local v4    # "am":Landroid/media/AudioManager;
    if-eqz v4, :cond_26

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v23

    if-eqz v23, :cond_26

    .line 254
    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v23

    if-eqz v23, :cond_27

    .line 255
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 266
    :cond_26
    :goto_e
    return-void

    .line 257
    :cond_27
    const/16 v23, 0x2

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 258
    new-instance v20, Landroid/media/ToneGenerator;

    .line 259
    const/16 v23, 0x5

    .line 260
    const/16 v24, 0x55

    .line 258
    move-object/from16 v0, v20

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Landroid/media/ToneGenerator;-><init>(II)V

    .line 261
    .restart local v20    # "tg":Landroid/media/ToneGenerator;
    if-eqz v20, :cond_26

    .line 262
    const/16 v23, 0x18

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/media/ToneGenerator;->startTone(I)Z

    goto :goto_e

    .line 267
    .end local v4    # "am":Landroid/media/AudioManager;
    .end local v20    # "tg":Landroid/media/ToneGenerator;
    :cond_28
    const-string/jumbo v23, "**ring_vib_silent**"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2c

    .line 268
    const-string/jumbo v23, "audio"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    .line 269
    .restart local v4    # "am":Landroid/media/AudioManager;
    if-eqz v4, :cond_29

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v23

    if-eqz v23, :cond_29

    .line 270
    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v23

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_2a

    .line 271
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 272
    const-string/jumbo v23, "vibrator"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/os/Vibrator;

    .line 273
    .restart local v21    # "vib":Landroid/os/Vibrator;
    if-eqz v21, :cond_29

    .line 274
    const-wide/16 v24, 0x32

    move-object/from16 v0, v21

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 288
    .end local v21    # "vib":Landroid/os/Vibrator;
    :cond_29
    :goto_f
    return-void

    .line 276
    :cond_2a
    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_2b

    .line 277
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_f

    .line 279
    :cond_2b
    const/16 v23, 0x2

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 280
    new-instance v20, Landroid/media/ToneGenerator;

    .line 281
    const/16 v23, 0x5

    .line 282
    const/16 v24, 0x55

    .line 280
    move-object/from16 v0, v20

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Landroid/media/ToneGenerator;-><init>(II)V

    .line 283
    .restart local v20    # "tg":Landroid/media/ToneGenerator;
    if-eqz v20, :cond_29

    .line 284
    const/16 v23, 0x18

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/media/ToneGenerator;->startTone(I)Z

    goto :goto_f

    .line 289
    .end local v4    # "am":Landroid/media/AudioManager;
    .end local v20    # "tg":Landroid/media/ToneGenerator;
    :cond_2c
    const-string/jumbo v23, "**camera**"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2d

    .line 292
    new-instance v13, Landroid/content/Intent;

    const-string/jumbo v23, "android.media.action.STILL_IMAGE_CAMERA"

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v13, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 293
    .restart local v13    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-static {v0, v13, v5, v15}, Lorg/slim/action/Action;->startActivity(Landroid/content/Context;Landroid/content/Intent;Lcom/android/internal/statusbar/IStatusBarService;Z)V

    .line 294
    return-void

    .line 295
    .end local v13    # "intent":Landroid/content/Intent;
    :cond_2d
    const-string/jumbo v23, "**media_previous**"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2e

    .line 296
    const/16 v23, 0x58

    move/from16 v0, v23

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lorg/slim/action/Action;->dispatchMediaKeyWithWakeLock(ILandroid/content/Context;)V

    .line 297
    return-void

    .line 298
    :cond_2e
    const-string/jumbo v23, "**media_next**"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2f

    .line 299
    const/16 v23, 0x57

    move/from16 v0, v23

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lorg/slim/action/Action;->dispatchMediaKeyWithWakeLock(ILandroid/content/Context;)V

    .line 300
    return-void

    .line 301
    :cond_2f
    const-string/jumbo v23, "**media_play_pause**"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_30

    .line 302
    const/16 v23, 0x55

    move/from16 v0, v23

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lorg/slim/action/Action;->dispatchMediaKeyWithWakeLock(ILandroid/content/Context;)V

    .line 303
    return-void

    .line 304
    :cond_30
    const-string/jumbo v23, "**wake_device**"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_32

    .line 306
    const-string/jumbo v23, "power"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/os/PowerManager;

    .line 307
    .local v18, "powerManager":Landroid/os/PowerManager;
    invoke-virtual/range {v18 .. v18}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v23

    if-nez v23, :cond_31

    .line 308
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    move-object/from16 v0, v18

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 310
    :cond_31
    return-void

    .line 313
    .end local v18    # "powerManager":Landroid/os/PowerManager;
    :cond_32
    const/4 v13, 0x0

    .line 315
    .local v13, "intent":Landroid/content/Intent;
    const/16 v23, 0x0

    :try_start_c
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-static {v0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_c
    .catch Ljava/net/URISyntaxException; {:try_start_c .. :try_end_c} :catch_c

    move-result-object v13

    .line 320
    .local v13, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-static {v0, v13, v5, v15}, Lorg/slim/action/Action;->startActivity(Landroid/content/Context;Landroid/content/Intent;Lcom/android/internal/statusbar/IStatusBarService;Z)V

    .line 321
    return-void

    .line 316
    .local v13, "intent":Landroid/content/Intent;
    :catch_c
    move-exception v12

    .line 317
    .local v12, "e":Ljava/net/URISyntaxException;
    const-string/jumbo v23, "Action:"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "URISyntaxException: ["

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "]"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    return-void
.end method

.method private static startActivity(Landroid/content/Context;Landroid/content/Intent;Lcom/android/internal/statusbar/IStatusBarService;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "barService"    # Lcom/android/internal/statusbar/IStatusBarService;
    .param p3, "isKeyguardShowing"    # Z

    .prologue
    .line 339
    if-nez p1, :cond_0

    .line 340
    return-void

    .line 342
    :cond_0
    if-eqz p3, :cond_1

    .line 345
    :try_start_0
    invoke-interface {p2, p1}, Lcom/android/internal/statusbar/IStatusBarService;->showCustomIntentAfterKeyguard(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    :goto_0
    return-void

    .line 346
    :catch_0
    move-exception v0

    .line 347
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "Action"

    const-string/jumbo v2, "Error starting custom intent on keyguard"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 352
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/IWindowManager;->dismissKeyguard()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 357
    :goto_1
    const/high16 v1, 0x34000000

    .line 356
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 361
    new-instance v1, Landroid/os/UserHandle;

    const/4 v2, -0x2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    .line 360
    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 353
    :catch_1
    move-exception v0

    .line 354
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "Action"

    const-string/jumbo v2, "Error dismissing keyguard"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static triggerVirtualKeypress(IZ)V
    .locals 28
    .param p0, "keyCode"    # I
    .param p1, "longpress"    # Z

    .prologue
    .line 376
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    .line 377
    .local v2, "im":Landroid/hardware/input/InputManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 378
    .local v4, "now":J
    const/4 v14, 0x0

    .line 379
    .local v14, "downflags":I
    const/16 v26, 0x0

    .line 380
    .local v26, "upflags":I
    const/16 v6, 0x15

    move/from16 v0, p0

    if-eq v0, v6, :cond_0

    .line 381
    const/16 v6, 0x16

    move/from16 v0, p0

    if-ne v0, v6, :cond_2

    .line 384
    :cond_0
    const/16 v26, 0x6

    const/4 v14, 0x6

    .line 388
    :goto_0
    if-eqz p1, :cond_1

    .line 389
    or-int/lit16 v14, v14, 0x80

    .line 392
    :cond_1
    new-instance v3, Landroid/view/KeyEvent;

    const/4 v8, 0x0

    .line 393
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    .line 395
    const/16 v15, 0x101

    move-wide v6, v4

    move/from16 v9, p0

    .line 392
    invoke-direct/range {v3 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 396
    .local v3, "downEvent":Landroid/view/KeyEvent;
    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 398
    new-instance v15, Landroid/view/KeyEvent;

    const/16 v20, 0x1

    .line 399
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, -0x1

    const/16 v25, 0x0

    .line 401
    const/16 v27, 0x101

    move-wide/from16 v16, v4

    move-wide/from16 v18, v4

    move/from16 v21, p0

    .line 398
    invoke-direct/range {v15 .. v27}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 402
    .local v15, "upEvent":Landroid/view/KeyEvent;
    const/4 v6, 0x0

    invoke-virtual {v2, v15, v6}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 375
    return-void

    .line 382
    .end local v3    # "downEvent":Landroid/view/KeyEvent;
    .end local v15    # "upEvent":Landroid/view/KeyEvent;
    :cond_2
    const/16 v6, 0x13

    move/from16 v0, p0

    if-eq v0, v6, :cond_0

    .line 383
    const/16 v6, 0x14

    move/from16 v0, p0

    if-eq v0, v6, :cond_0

    .line 386
    const/16 v26, 0x8

    const/16 v14, 0x8

    goto :goto_0
.end method
