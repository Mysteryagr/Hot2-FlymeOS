.class public Lorg/slim/framework/internal/policy/HardwareKeyHandler;
.super Ljava/lang/Object;
.source "HardwareKeyHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/slim/framework/internal/policy/HardwareKeyHandler$HwKeySettingsObserver;,
        Lorg/slim/framework/internal/policy/HardwareKeyHandler$1;
    }
.end annotation


# static fields
.field private static final KEY_MASK_APP_SWITCH:I = 0x10

.field private static final KEY_MASK_ASSIST:I = 0x8

.field private static final KEY_MASK_BACK:I = 0x2

.field private static final KEY_MASK_CAMERA:I = 0x20

.field private static final KEY_MASK_HOME:I = 0x1

.field private static final KEY_MASK_MENU:I = 0x4

.field private static final SUPPORTED_KEYS:[I

.field private static final TAG:Ljava/lang/String; = "HardwareKeyHandler"

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;


# instance fields
.field mAppSwitchConsumed:Z

.field mAppSwitchDoubleTapPending:Z

.field mAppSwitchPressed:Z

.field mAssistConsumed:Z

.field mAssistDoubleTapPending:Z

.field mAssistPressed:Z

.field mBackConsumed:Z

.field mBackDoubleTapPending:Z

.field mBackPressed:Z

.field mCameraConsumed:Z

.field mCameraDoubleTapPending:Z

.field mCameraPressed:Z

.field private mContext:Landroid/content/Context;

.field private mDeviceHardwareKeys:I

.field private mDisableVibration:Z

.field private mDoubleTapOnAppSwitchBehavior:Ljava/lang/String;

.field private mDoubleTapOnAssistBehavior:Ljava/lang/String;

.field private mDoubleTapOnBackBehavior:Ljava/lang/String;

.field private mDoubleTapOnCameraBehavior:Ljava/lang/String;

.field private mDoubleTapOnHomeBehavior:Ljava/lang/String;

.field private mDoubleTapOnMenuBehavior:Ljava/lang/String;

.field private final mDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

.field private mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

.field private mHandler:Landroid/os/Handler;

.field mHomeConsumed:Z

.field mHomeDoubleTapPending:Z

.field mHomePressed:Z

.field private mHwKeySettingsObserver:Lorg/slim/framework/internal/policy/HardwareKeyHandler$HwKeySettingsObserver;

.field private mKeysDisabled:Z

.field private mLongPressOnAppSwitchBehavior:Ljava/lang/String;

.field private mLongPressOnAssistBehavior:Ljava/lang/String;

.field private mLongPressOnBackBehavior:Ljava/lang/String;

.field private mLongPressOnCameraBehavior:Ljava/lang/String;

.field private mLongPressOnHomeBehavior:Ljava/lang/String;

.field private mLongPressOnMenuBehavior:Ljava/lang/String;

.field private mLongPressVibePattern:[J

.field mMenuConsumed:Z

.field mMenuDoubleTapPending:Z

.field mMenuPressed:Z

.field private mPreloadedRecentApps:Z

.field private mPressOnAppSwitchBehavior:Ljava/lang/String;

.field private mPressOnAssistBehavior:Ljava/lang/String;

.field private mPressOnBackBehavior:Ljava/lang/String;

.field private mPressOnCameraBehavior:Ljava/lang/String;

.field private mPressOnHomeBehavior:Ljava/lang/String;

.field private mPressOnMenuBehavior:Ljava/lang/String;

.field private final mServiceAquireLock:Ljava/lang/Object;

.field private mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private mVibrator:Landroid/os/Vibrator;

.field private mVirtualKeyVibePattern:[J


# direct methods
.method static synthetic -get0(Lorg/slim/framework/internal/policy/HardwareKeyHandler;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lorg/slim/framework/internal/policy/HardwareKeyHandler;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mPressOnAppSwitchBehavior:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lorg/slim/framework/internal/policy/HardwareKeyHandler;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mPressOnAssistBehavior:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Lorg/slim/framework/internal/policy/HardwareKeyHandler;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mPressOnBackBehavior:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get4(Lorg/slim/framework/internal/policy/HardwareKeyHandler;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mPressOnCameraBehavior:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get5(Lorg/slim/framework/internal/policy/HardwareKeyHandler;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mPressOnHomeBehavior:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get6(Lorg/slim/framework/internal/policy/HardwareKeyHandler;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mPressOnMenuBehavior:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -wrap0(Lorg/slim/framework/internal/policy/HardwareKeyHandler;)V
    .locals 0

    invoke-direct {p0}, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->cancelPreloadRecentApps()V

    return-void
.end method

.method static synthetic -wrap1(Lorg/slim/framework/internal/policy/HardwareKeyHandler;)V
    .locals 0

    invoke-direct {p0}, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->updateKeyAssignments()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 61
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->SUPPORTED_KEYS:[I

    .line 65
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 66
    const/4 v1, 0x4

    .line 65
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 67
    const/16 v1, 0xd

    .line 65
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 46
    return-void

    .line 61
    nop

    :array_0
    .array-data 4
        0x3
        0x52
        0x4
        0xdb
        0x1b
        0xbb
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mServiceAquireLock:Ljava/lang/Object;

    .line 106
    const-string/jumbo v0, "**null**"

    iput-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mPressOnHomeBehavior:Ljava/lang/String;

    .line 107
    const-string/jumbo v0, "**null**"

    iput-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mLongPressOnHomeBehavior:Ljava/lang/String;

    .line 108
    const-string/jumbo v0, "**null**"

    iput-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapOnHomeBehavior:Ljava/lang/String;

    .line 109
    const-string/jumbo v0, "**null**"

    iput-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mPressOnMenuBehavior:Ljava/lang/String;

    .line 110
    const-string/jumbo v0, "**null**"

    iput-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mLongPressOnMenuBehavior:Ljava/lang/String;

    .line 111
    const-string/jumbo v0, "**null**"

    iput-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapOnMenuBehavior:Ljava/lang/String;

    .line 112
    const-string/jumbo v0, "**null**"

    iput-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mPressOnBackBehavior:Ljava/lang/String;

    .line 113
    const-string/jumbo v0, "**null**"

    iput-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mLongPressOnBackBehavior:Ljava/lang/String;

    .line 114
    const-string/jumbo v0, "**null**"

    iput-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapOnBackBehavior:Ljava/lang/String;

    .line 115
    const-string/jumbo v0, "**null**"

    iput-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mPressOnAssistBehavior:Ljava/lang/String;

    .line 116
    const-string/jumbo v0, "**null**"

    iput-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mLongPressOnAssistBehavior:Ljava/lang/String;

    .line 117
    const-string/jumbo v0, "**null**"

    iput-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapOnAssistBehavior:Ljava/lang/String;

    .line 118
    const-string/jumbo v0, "**null**"

    iput-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mPressOnAppSwitchBehavior:Ljava/lang/String;

    .line 119
    const-string/jumbo v0, "**null**"

    iput-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mLongPressOnAppSwitchBehavior:Ljava/lang/String;

    .line 120
    const-string/jumbo v0, "**null**"

    iput-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapOnAppSwitchBehavior:Ljava/lang/String;

    .line 121
    const-string/jumbo v0, "**null**"

    iput-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mPressOnCameraBehavior:Ljava/lang/String;

    .line 122
    const-string/jumbo v0, "**null**"

    iput-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mLongPressOnCameraBehavior:Ljava/lang/String;

    .line 123
    const-string/jumbo v0, "**null**"

    iput-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapOnCameraBehavior:Ljava/lang/String;

    .line 127
    new-instance v0, Lorg/slim/framework/internal/policy/HardwareKeyHandler$1;

    invoke-direct {v0, p0}, Lorg/slim/framework/internal/policy/HardwareKeyHandler$1;-><init>(Lorg/slim/framework/internal/policy/HardwareKeyHandler;)V

    iput-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 259
    iput-object p1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mContext:Landroid/content/Context;

    .line 260
    iput-object p2, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mHandler:Landroid/os/Handler;

    .line 262
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 263
    const/high16 v1, 0x37050000

    .line 262
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDeviceHardwareKeys:I

    .line 265
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 266
    const v1, 0x107001c

    .line 265
    invoke-static {v0, v1}, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v0

    iput-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mLongPressVibePattern:[J

    .line 267
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 268
    const v1, 0x107001d

    .line 267
    invoke-static {v0, v1}, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v0

    iput-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mVirtualKeyVibePattern:[J

    .line 270
    const-string/jumbo v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mVibrator:Landroid/os/Vibrator;

    .line 272
    new-instance v0, Lorg/slim/framework/internal/policy/HardwareKeyHandler$HwKeySettingsObserver;

    iget-object v1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lorg/slim/framework/internal/policy/HardwareKeyHandler$HwKeySettingsObserver;-><init>(Lorg/slim/framework/internal/policy/HardwareKeyHandler;Landroid/os/Handler;)V

    iput-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mHwKeySettingsObserver:Lorg/slim/framework/internal/policy/HardwareKeyHandler$HwKeySettingsObserver;

    .line 273
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mHwKeySettingsObserver:Lorg/slim/framework/internal/policy/HardwareKeyHandler$HwKeySettingsObserver;

    invoke-virtual {v0}, Lorg/slim/framework/internal/policy/HardwareKeyHandler$HwKeySettingsObserver;->observe()V

    .line 258
    return-void
.end method

.method private cancelPreloadRecentApps()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 826
    iget-boolean v2, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mPreloadedRecentApps:Z

    if-eqz v2, :cond_0

    .line 827
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mPreloadedRecentApps:Z

    .line 829
    :try_start_0
    invoke-virtual {p0}, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 830
    .local v1, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 831
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->cancelPreloadRecentApps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 825
    .end local v1    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    :goto_0
    return-void

    .line 833
    :catch_0
    move-exception v0

    .line 834
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "HardwareKeyHandler"

    const-string/jumbo v3, "RemoteException when cancelling recent apps preload"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 836
    iput-object v4, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_0
.end method

.method static getLongIntArray(Landroid/content/res/Resources;I)[J
    .locals 6
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "resid"    # I

    .prologue
    const/4 v3, 0x0

    .line 277
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 278
    .local v0, "ar":[I
    if-nez v0, :cond_0

    .line 279
    return-object v3

    .line 281
    :cond_0
    array-length v3, v0

    new-array v2, v3, [J

    .line 282
    .local v2, "out":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 283
    aget v3, v0, v1

    int-to-long v4, v3

    aput-wide v4, v2, v1

    .line 282
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 285
    :cond_1
    return-object v2
.end method

.method private isKeyDisabled(I)Z
    .locals 2
    .param p1, "keyCode"    # I

    .prologue
    .line 379
    iget-boolean v1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mKeysDisabled:Z

    if-eqz v1, :cond_1

    .line 380
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->SUPPORTED_KEYS:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 381
    sget-object v1, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->SUPPORTED_KEYS:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 382
    const/4 v1, 0x1

    return v1

    .line 380
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 386
    .end local v0    # "i":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private performHapticFeedback(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z
    .locals 9
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "effectId"    # I
    .param p3, "always"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 842
    iget-boolean v1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDisableVibration:Z

    if-eqz v1, :cond_0

    .line 843
    iput-boolean v7, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDisableVibration:Z

    .line 844
    return v7

    .line 846
    :cond_0
    iget-object v1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mVibrator:Landroid/os/Vibrator;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v1}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 849
    iget-object v1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 850
    const-string/jumbo v5, "haptic_feedback_enabled"

    const/4 v6, -0x2

    .line 849
    invoke-static {v1, v5, v7, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_3

    const/4 v0, 0x1

    .line 851
    .local v0, "hapticsDisabled":Z
    :goto_0
    if-eqz v0, :cond_1

    if-eqz p3, :cond_4

    .line 854
    :cond_1
    const/4 v4, 0x0

    .line 855
    .local v4, "pattern":[J
    packed-switch p2, :pswitch_data_0

    .line 863
    return v7

    .line 847
    .end local v0    # "hapticsDisabled":Z
    .end local v4    # "pattern":[J
    :cond_2
    return v7

    .line 849
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "hapticsDisabled":Z
    goto :goto_0

    .line 852
    :cond_4
    return v7

    .line 857
    .restart local v4    # "pattern":[J
    :pswitch_0
    iget-object v4, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mLongPressVibePattern:[J

    .line 867
    .local v4, "pattern":[J
    :goto_1
    if-eqz p1, :cond_5

    .line 868
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getOwningUid()I

    move-result v2

    .line 869
    .local v2, "owningUid":I
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v3

    .line 874
    .local v3, "owningPackage":Ljava/lang/String;
    :goto_2
    array-length v1, v4

    if-ne v1, v8, :cond_6

    .line 876
    iget-object v1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mVibrator:Landroid/os/Vibrator;

    aget-wide v4, v4, v7

    .end local v4    # "pattern":[J
    sget-object v6, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual/range {v1 .. v6}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;JLandroid/media/AudioAttributes;)V

    .line 881
    :goto_3
    return v8

    .line 860
    .end local v2    # "owningUid":I
    .end local v3    # "owningPackage":Ljava/lang/String;
    .local v4, "pattern":[J
    :pswitch_1
    iget-object v4, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mVirtualKeyVibePattern:[J

    .local v4, "pattern":[J
    goto :goto_1

    .line 871
    :cond_5
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    .line 872
    .restart local v2    # "owningUid":I
    iget-object v1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "owningPackage":Ljava/lang/String;
    goto :goto_2

    .line 879
    :cond_6
    iget-object v1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mVibrator:Landroid/os/Vibrator;

    sget-object v6, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    const/4 v5, -0x1

    invoke-virtual/range {v1 .. v6}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;[JILandroid/media/AudioAttributes;)V

    goto :goto_3

    .line 855
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private preloadRecentApps()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 812
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mPreloadedRecentApps:Z

    .line 814
    :try_start_0
    invoke-virtual {p0}, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 815
    .local v1, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 816
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->preloadRecentApps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 811
    .end local v1    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    :goto_0
    return-void

    .line 818
    :catch_0
    move-exception v0

    .line 819
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "HardwareKeyHandler"

    const-string/jumbo v3, "RemoteException when preloading recent apps"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 821
    iput-object v4, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_0
.end method

.method private updateKeyAssignments()V
    .locals 12

    .prologue
    const/4 v11, -0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 289
    iget v7, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDeviceHardwareKeys:I

    and-int/lit8 v7, v7, 0x4

    if-nez v7, :cond_1

    const/4 v6, 0x1

    .line 290
    .local v6, "noMenu":Z
    :goto_0
    iget v7, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDeviceHardwareKeys:I

    and-int/lit8 v7, v7, 0x2

    if-nez v7, :cond_2

    const/4 v3, 0x1

    .line 291
    .local v3, "noBack":Z
    :goto_1
    iget v7, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDeviceHardwareKeys:I

    and-int/lit8 v7, v7, 0x1

    if-nez v7, :cond_3

    const/4 v5, 0x1

    .line 292
    .local v5, "noHome":Z
    :goto_2
    iget v7, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDeviceHardwareKeys:I

    and-int/lit8 v7, v7, 0x8

    if-nez v7, :cond_4

    const/4 v2, 0x1

    .line 293
    .local v2, "noAssist":Z
    :goto_3
    iget v7, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDeviceHardwareKeys:I

    and-int/lit8 v7, v7, 0x10

    if-nez v7, :cond_5

    const/4 v1, 0x1

    .line 294
    .local v1, "noAppSwitch":Z
    :goto_4
    iget v7, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDeviceHardwareKeys:I

    and-int/lit8 v7, v7, 0x20

    if-nez v7, :cond_6

    const/4 v4, 0x1

    .line 297
    .local v4, "noCamera":Z
    :goto_5
    iget-object v7, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 298
    const-string/jumbo v10, "disable_hw_keys"

    .line 296
    invoke-static {v7, v10, v9, v11}, Lorg/slim/provider/SlimSettings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-ne v7, v8, :cond_7

    move v7, v8

    :goto_6
    iput-boolean v7, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mKeysDisabled:Z

    .line 303
    iget-object v7, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 304
    const-string/jumbo v10, "hardware_key_rebinding"

    .line 302
    invoke-static {v7, v10, v9, v11}, Lorg/slim/provider/SlimSettings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-nez v7, :cond_8

    const/4 v0, 0x1

    .line 310
    .local v0, "keyRebindingDisabled":Z
    :goto_7
    iget-object v10, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mContext:Landroid/content/Context;

    if-nez v5, :cond_9

    move v7, v0

    .line 309
    :goto_8
    invoke-static {v10, v7}, Lorg/slim/utils/HwKeyHelper;->getPressOnHomeBehavior(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v7

    .line 308
    iput-object v7, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mPressOnHomeBehavior:Ljava/lang/String;

    .line 313
    iget-object v10, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mContext:Landroid/content/Context;

    if-nez v5, :cond_a

    move v7, v0

    .line 312
    :goto_9
    invoke-static {v10, v7}, Lorg/slim/utils/HwKeyHelper;->getLongPressOnHomeBehavior(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v7

    .line 311
    iput-object v7, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mLongPressOnHomeBehavior:Ljava/lang/String;

    .line 316
    iget-object v10, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mContext:Landroid/content/Context;

    if-nez v5, :cond_b

    move v7, v0

    .line 315
    :goto_a
    invoke-static {v10, v7}, Lorg/slim/utils/HwKeyHelper;->getDoubleTapOnHomeBehavior(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v7

    .line 314
    iput-object v7, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapOnHomeBehavior:Ljava/lang/String;

    .line 321
    iget-object v10, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mContext:Landroid/content/Context;

    if-nez v6, :cond_c

    move v7, v0

    .line 320
    :goto_b
    invoke-static {v10, v7}, Lorg/slim/utils/HwKeyHelper;->getPressOnMenuBehavior(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v7

    .line 319
    iput-object v7, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mPressOnMenuBehavior:Ljava/lang/String;

    .line 323
    iget-object v10, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mContext:Landroid/content/Context;

    .line 324
    if-nez v6, :cond_d

    move v7, v0

    :goto_c
    if-nez v6, :cond_e

    if-eqz v2, :cond_e

    .line 323
    :goto_d
    invoke-static {v10, v7, v9}, Lorg/slim/utils/HwKeyHelper;->getLongPressOnMenuBehavior(Landroid/content/Context;ZZ)Ljava/lang/String;

    move-result-object v7

    .line 322
    iput-object v7, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mLongPressOnMenuBehavior:Ljava/lang/String;

    .line 327
    iget-object v9, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mContext:Landroid/content/Context;

    if-nez v6, :cond_f

    move v7, v0

    .line 326
    :goto_e
    invoke-static {v9, v7}, Lorg/slim/utils/HwKeyHelper;->getDoubleTapOnMenuBehavior(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v7

    .line 325
    iput-object v7, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapOnMenuBehavior:Ljava/lang/String;

    .line 332
    iget-object v9, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mContext:Landroid/content/Context;

    if-nez v3, :cond_10

    move v7, v0

    .line 331
    :goto_f
    invoke-static {v9, v7}, Lorg/slim/utils/HwKeyHelper;->getPressOnBackBehavior(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v7

    .line 330
    iput-object v7, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mPressOnBackBehavior:Ljava/lang/String;

    .line 335
    iget-object v9, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mContext:Landroid/content/Context;

    if-nez v3, :cond_11

    move v7, v0

    .line 334
    :goto_10
    invoke-static {v9, v7}, Lorg/slim/utils/HwKeyHelper;->getLongPressOnBackBehavior(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v7

    .line 333
    iput-object v7, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mLongPressOnBackBehavior:Ljava/lang/String;

    .line 338
    iget-object v9, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mContext:Landroid/content/Context;

    if-nez v3, :cond_12

    move v7, v0

    .line 337
    :goto_11
    invoke-static {v9, v7}, Lorg/slim/utils/HwKeyHelper;->getDoubleTapOnBackBehavior(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v7

    .line 336
    iput-object v7, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapOnBackBehavior:Ljava/lang/String;

    .line 343
    iget-object v9, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mContext:Landroid/content/Context;

    if-nez v2, :cond_13

    move v7, v0

    .line 342
    :goto_12
    invoke-static {v9, v7}, Lorg/slim/utils/HwKeyHelper;->getPressOnAssistBehavior(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v7

    .line 341
    iput-object v7, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mPressOnAssistBehavior:Ljava/lang/String;

    .line 346
    iget-object v9, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mContext:Landroid/content/Context;

    if-nez v2, :cond_14

    move v7, v0

    .line 345
    :goto_13
    invoke-static {v9, v7}, Lorg/slim/utils/HwKeyHelper;->getLongPressOnAssistBehavior(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v7

    .line 344
    iput-object v7, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mLongPressOnAssistBehavior:Ljava/lang/String;

    .line 349
    iget-object v9, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mContext:Landroid/content/Context;

    if-nez v2, :cond_15

    move v7, v0

    .line 348
    :goto_14
    invoke-static {v9, v7}, Lorg/slim/utils/HwKeyHelper;->getDoubleTapOnAssistBehavior(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v7

    .line 347
    iput-object v7, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapOnAssistBehavior:Ljava/lang/String;

    .line 354
    iget-object v9, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mContext:Landroid/content/Context;

    if-nez v1, :cond_16

    move v7, v0

    .line 353
    :goto_15
    invoke-static {v9, v7}, Lorg/slim/utils/HwKeyHelper;->getPressOnAppSwitchBehavior(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v7

    .line 352
    iput-object v7, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mPressOnAppSwitchBehavior:Ljava/lang/String;

    .line 357
    iget-object v9, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mContext:Landroid/content/Context;

    if-nez v1, :cond_17

    move v7, v0

    .line 356
    :goto_16
    invoke-static {v9, v7}, Lorg/slim/utils/HwKeyHelper;->getLongPressOnAppSwitchBehavior(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v7

    .line 355
    iput-object v7, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mLongPressOnAppSwitchBehavior:Ljava/lang/String;

    .line 360
    iget-object v9, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mContext:Landroid/content/Context;

    if-nez v1, :cond_18

    move v7, v0

    .line 359
    :goto_17
    invoke-static {v9, v7}, Lorg/slim/utils/HwKeyHelper;->getDoubleTapOnAppSwitchBehavior(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v7

    .line 358
    iput-object v7, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapOnAppSwitchBehavior:Ljava/lang/String;

    .line 365
    iget-object v9, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mContext:Landroid/content/Context;

    if-nez v4, :cond_19

    move v7, v0

    .line 364
    :goto_18
    invoke-static {v9, v7}, Lorg/slim/utils/HwKeyHelper;->getPressOnCameraBehavior(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v7

    .line 363
    iput-object v7, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mPressOnCameraBehavior:Ljava/lang/String;

    .line 368
    iget-object v9, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mContext:Landroid/content/Context;

    if-nez v4, :cond_1a

    move v7, v0

    .line 367
    :goto_19
    invoke-static {v9, v7}, Lorg/slim/utils/HwKeyHelper;->getLongPressOnCameraBehavior(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v7

    .line 366
    iput-object v7, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mLongPressOnCameraBehavior:Ljava/lang/String;

    .line 371
    iget-object v7, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mContext:Landroid/content/Context;

    if-nez v4, :cond_0

    move v8, v0

    .line 370
    :cond_0
    invoke-static {v7, v8}, Lorg/slim/utils/HwKeyHelper;->getDoubleTapOnCameraBehavior(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v7

    .line 369
    iput-object v7, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapOnCameraBehavior:Ljava/lang/String;

    .line 288
    return-void

    .line 289
    .end local v0    # "keyRebindingDisabled":Z
    .end local v1    # "noAppSwitch":Z
    .end local v2    # "noAssist":Z
    .end local v3    # "noBack":Z
    .end local v4    # "noCamera":Z
    .end local v5    # "noHome":Z
    .end local v6    # "noMenu":Z
    :cond_1
    const/4 v6, 0x0

    .restart local v6    # "noMenu":Z
    goto/16 :goto_0

    .line 290
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "noBack":Z
    goto/16 :goto_1

    .line 291
    :cond_3
    const/4 v5, 0x0

    .restart local v5    # "noHome":Z
    goto/16 :goto_2

    .line 292
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "noAssist":Z
    goto/16 :goto_3

    .line 293
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "noAppSwitch":Z
    goto/16 :goto_4

    .line 294
    :cond_6
    const/4 v4, 0x0

    .restart local v4    # "noCamera":Z
    goto/16 :goto_5

    :cond_7
    move v7, v9

    .line 296
    goto/16 :goto_6

    .line 302
    :cond_8
    const/4 v0, 0x0

    .restart local v0    # "keyRebindingDisabled":Z
    goto/16 :goto_7

    :cond_9
    move v7, v8

    .line 310
    goto/16 :goto_8

    :cond_a
    move v7, v8

    .line 313
    goto/16 :goto_9

    :cond_b
    move v7, v8

    .line 316
    goto/16 :goto_a

    :cond_c
    move v7, v8

    .line 321
    goto/16 :goto_b

    :cond_d
    move v7, v8

    .line 324
    goto/16 :goto_c

    :cond_e
    move v9, v8

    goto/16 :goto_d

    :cond_f
    move v7, v8

    .line 327
    goto/16 :goto_e

    :cond_10
    move v7, v8

    .line 332
    goto/16 :goto_f

    :cond_11
    move v7, v8

    .line 335
    goto/16 :goto_10

    :cond_12
    move v7, v8

    .line 338
    goto/16 :goto_11

    :cond_13
    move v7, v8

    .line 343
    goto/16 :goto_12

    :cond_14
    move v7, v8

    .line 346
    goto/16 :goto_13

    :cond_15
    move v7, v8

    .line 349
    goto/16 :goto_14

    :cond_16
    move v7, v8

    .line 354
    goto :goto_15

    :cond_17
    move v7, v8

    .line 357
    goto :goto_16

    :cond_18
    move v7, v8

    .line 360
    goto :goto_17

    :cond_19
    move v7, v8

    .line 365
    goto :goto_18

    :cond_1a
    move v7, v8

    .line 368
    goto :goto_19
.end method


# virtual methods
.method getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .locals 2

    .prologue
    .line 802
    iget-object v1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mServiceAquireLock:Ljava/lang/Object;

    monitor-enter v1

    .line 803
    :try_start_0
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_0

    .line 805
    const-string/jumbo v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 804
    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 807
    :cond_0
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 802
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public handleKeyEvent(IIZZZZ)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "repeatCount"    # I
    .param p3, "down"    # Z
    .param p4, "canceled"    # Z
    .param p5, "longpress"    # Z
    .param p6, "keyguardOn"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 392
    invoke-direct {p0, p1}, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->isKeyDisabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    return v4

    .line 396
    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_d

    .line 397
    if-nez p3, :cond_6

    iget-boolean v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mHomePressed:Z

    if-eqz v0, :cond_6

    .line 398
    iput-boolean v2, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mHomePressed:Z

    .line 399
    iget-boolean v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mHomeConsumed:Z

    if-eqz v0, :cond_1

    .line 400
    iput-boolean v2, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mHomeConsumed:Z

    .line 401
    return v4

    .line 404
    :cond_1
    if-eqz p4, :cond_2

    .line 405
    const-string/jumbo v0, "HardwareKeyHandler"

    const-string/jumbo v1, "Ignoring HOME, event canceled."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    return v4

    .line 409
    :cond_2
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapOnHomeBehavior:Ljava/lang/String;

    const-string/jumbo v1, "**null**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 410
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 411
    iput-boolean v4, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mHomeDoubleTapPending:Z

    .line 412
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 413
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v2

    int-to-long v2, v2

    .line 412
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 414
    return v4

    .line 417
    :cond_3
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    invoke-virtual {v0}, Landroid/service/dreams/DreamManagerInternal;->isDreaming()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 418
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    invoke-virtual {v0, v2}, Landroid/service/dreams/DreamManagerInternal;->stopDream(Z)V

    .line 419
    return v4

    .line 422
    :cond_4
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mPressOnHomeBehavior:Ljava/lang/String;

    const-string/jumbo v1, "**recents**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 423
    invoke-direct {p0}, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->cancelPreloadRecentApps()V

    .line 425
    :cond_5
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mPressOnHomeBehavior:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lorg/slim/action/Action;->processAction(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 426
    return v4

    .line 429
    :cond_6
    if-eqz p3, :cond_a

    .line 430
    iget-boolean v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mPreloadedRecentApps:Z

    if-nez v0, :cond_8

    .line 431
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mLongPressOnHomeBehavior:Ljava/lang/String;

    const-string/jumbo v1, "**recents**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 432
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapOnHomeBehavior:Ljava/lang/String;

    const-string/jumbo v1, "**recents**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 431
    if-nez v0, :cond_7

    .line 433
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mPressOnHomeBehavior:Ljava/lang/String;

    const-string/jumbo v1, "**recents**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 430
    if-eqz v0, :cond_8

    .line 434
    :cond_7
    invoke-direct {p0}, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->preloadRecentApps()V

    .line 436
    :cond_8
    if-nez p2, :cond_b

    .line 437
    iput-boolean v4, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mHomePressed:Z

    .line 438
    iget-boolean v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mHomeDoubleTapPending:Z

    if-eqz v0, :cond_a

    .line 439
    iput-boolean v2, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mHomeDoubleTapPending:Z

    .line 440
    iput-boolean v2, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDisableVibration:Z

    .line 441
    iput-boolean v4, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mHomeConsumed:Z

    .line 442
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 443
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapOnHomeBehavior:Ljava/lang/String;

    const-string/jumbo v1, "**recents**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 444
    invoke-direct {p0}, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->cancelPreloadRecentApps()V

    .line 446
    :cond_9
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapOnHomeBehavior:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lorg/slim/action/Action;->processAction(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 461
    :cond_a
    :goto_0
    return v4

    .line 448
    :cond_b
    if-eqz p5, :cond_a

    .line 449
    if-nez p6, :cond_a

    .line 450
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mLongPressOnHomeBehavior:Ljava/lang/String;

    const-string/jumbo v1, "**null**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 451
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mLongPressOnHomeBehavior:Ljava/lang/String;

    const-string/jumbo v1, "**recents**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 452
    invoke-direct {p0}, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->cancelPreloadRecentApps()V

    .line 454
    :cond_c
    iput-boolean v4, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mHomePressed:Z

    .line 455
    invoke-direct {p0, v3, v2, v2}, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->performHapticFeedback(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 456
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mLongPressOnHomeBehavior:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lorg/slim/action/Action;->processAction(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 457
    iput-boolean v4, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mHomeConsumed:Z

    goto :goto_0

    .line 462
    :cond_d
    const/16 v0, 0x52

    if-ne p1, v0, :cond_1a

    .line 465
    if-nez p3, :cond_12

    iget-boolean v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mMenuPressed:Z

    if-eqz v0, :cond_12

    .line 466
    iput-boolean v2, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mMenuPressed:Z

    .line 467
    iget-boolean v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mMenuConsumed:Z

    if-eqz v0, :cond_e

    .line 468
    iput-boolean v2, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mMenuConsumed:Z

    .line 469
    return v4

    .line 472
    :cond_e
    if-eqz p4, :cond_f

    .line 473
    const-string/jumbo v0, "HardwareKeyHandler"

    const-string/jumbo v1, "Ignoring MENU, event canceled."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    return v4

    .line 478
    :cond_f
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapOnMenuBehavior:Ljava/lang/String;

    const-string/jumbo v1, "**null**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 479
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 480
    iput-boolean v2, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDisableVibration:Z

    .line 481
    iput-boolean v4, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mMenuDoubleTapPending:Z

    .line 482
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 483
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v2

    int-to-long v2, v2

    .line 482
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 484
    return v4

    .line 487
    :cond_10
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mPressOnMenuBehavior:Ljava/lang/String;

    const-string/jumbo v1, "**recents**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 488
    invoke-direct {p0}, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->cancelPreloadRecentApps()V

    .line 491
    :cond_11
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mPressOnMenuBehavior:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lorg/slim/action/Action;->processAction(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 492
    return v4

    .line 495
    :cond_12
    if-eqz p3, :cond_17

    .line 497
    iget-boolean v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mPreloadedRecentApps:Z

    if-nez v0, :cond_14

    .line 498
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mLongPressOnMenuBehavior:Ljava/lang/String;

    const-string/jumbo v1, "**recents**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 499
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapOnMenuBehavior:Ljava/lang/String;

    const-string/jumbo v1, "**recents**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 498
    if-nez v0, :cond_13

    .line 500
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mPressOnMenuBehavior:Ljava/lang/String;

    const-string/jumbo v1, "**recents**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 497
    if-eqz v0, :cond_14

    .line 501
    :cond_13
    invoke-direct {p0}, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->preloadRecentApps()V

    .line 503
    :cond_14
    if-nez p2, :cond_16

    .line 504
    iput-boolean v4, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mMenuPressed:Z

    .line 505
    iget-boolean v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mMenuDoubleTapPending:Z

    if-eqz v0, :cond_17

    .line 506
    iput-boolean v2, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mMenuDoubleTapPending:Z

    .line 507
    iput-boolean v2, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDisableVibration:Z

    .line 508
    iput-boolean v4, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mMenuConsumed:Z

    .line 509
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 510
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapOnMenuBehavior:Ljava/lang/String;

    const-string/jumbo v1, "**recents**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 511
    invoke-direct {p0}, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->cancelPreloadRecentApps()V

    .line 513
    :cond_15
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapOnMenuBehavior:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lorg/slim/action/Action;->processAction(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 514
    return v4

    .line 516
    :cond_16
    if-eqz p5, :cond_17

    .line 517
    if-nez p6, :cond_17

    .line 518
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mLongPressOnMenuBehavior:Ljava/lang/String;

    const-string/jumbo v1, "**null**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 529
    :cond_17
    return v4

    .line 519
    :cond_18
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mLongPressOnMenuBehavior:Ljava/lang/String;

    const-string/jumbo v1, "**recents**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 520
    invoke-direct {p0}, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->cancelPreloadRecentApps()V

    .line 522
    :cond_19
    invoke-direct {p0, v3, v2, v2}, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->performHapticFeedback(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 523
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mLongPressOnMenuBehavior:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lorg/slim/action/Action;->processAction(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 524
    iput-boolean v4, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mMenuConsumed:Z

    .line 525
    return v4

    .line 530
    :cond_1a
    const/4 v0, 0x4

    if-ne p1, v0, :cond_26

    .line 533
    if-nez p3, :cond_1f

    iget-boolean v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mBackPressed:Z

    if-eqz v0, :cond_1f

    .line 534
    iput-boolean v2, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mBackPressed:Z

    .line 535
    iget-boolean v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mBackConsumed:Z

    if-eqz v0, :cond_1b

    .line 536
    iput-boolean v2, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mBackConsumed:Z

    .line 537
    return v4

    .line 540
    :cond_1b
    if-eqz p4, :cond_1c

    .line 541
    const-string/jumbo v0, "HardwareKeyHandler"

    const-string/jumbo v1, "Ignoring BACK, event canceled."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    return v4

    .line 546
    :cond_1c
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapOnBackBehavior:Ljava/lang/String;

    const-string/jumbo v1, "**null**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 547
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 548
    iput-boolean v2, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDisableVibration:Z

    .line 549
    iput-boolean v4, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mBackDoubleTapPending:Z

    .line 550
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 551
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v2

    int-to-long v2, v2

    .line 550
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 552
    return v4

    .line 555
    :cond_1d
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mPressOnBackBehavior:Ljava/lang/String;

    const-string/jumbo v1, "**recents**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 556
    invoke-direct {p0}, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->cancelPreloadRecentApps()V

    .line 559
    :cond_1e
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mPressOnBackBehavior:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lorg/slim/action/Action;->processAction(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 560
    return v4

    .line 563
    :cond_1f
    if-eqz p3, :cond_23

    .line 565
    iget-boolean v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mPreloadedRecentApps:Z

    if-nez v0, :cond_21

    .line 566
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mLongPressOnBackBehavior:Ljava/lang/String;

    const-string/jumbo v1, "**recents**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 567
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapOnBackBehavior:Ljava/lang/String;

    const-string/jumbo v1, "**recents**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 566
    if-nez v0, :cond_20

    .line 568
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mPressOnBackBehavior:Ljava/lang/String;

    const-string/jumbo v1, "**recents**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 565
    if-eqz v0, :cond_21

    .line 569
    :cond_20
    invoke-direct {p0}, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->preloadRecentApps()V

    .line 571
    :cond_21
    if-nez p2, :cond_24

    .line 572
    iput-boolean v4, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mBackPressed:Z

    .line 573
    iget-boolean v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mBackDoubleTapPending:Z

    if-eqz v0, :cond_23

    .line 574
    iput-boolean v2, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mBackDoubleTapPending:Z

    .line 575
    iput-boolean v2, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDisableVibration:Z

    .line 576
    iput-boolean v4, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mBackConsumed:Z

    .line 577
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 578
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapOnBackBehavior:Ljava/lang/String;

    const-string/jumbo v1, "**recents**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 579
    invoke-direct {p0}, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->cancelPreloadRecentApps()V

    .line 581
    :cond_22
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapOnBackBehavior:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lorg/slim/action/Action;->processAction(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 595
    :cond_23
    :goto_1
    return v4

    .line 583
    :cond_24
    if-eqz p5, :cond_23

    .line 584
    if-nez p6, :cond_23

    .line 585
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mLongPressOnBackBehavior:Ljava/lang/String;

    const-string/jumbo v1, "**null**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 586
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mLongPressOnBackBehavior:Ljava/lang/String;

    const-string/jumbo v1, "**recents**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 587
    invoke-direct {p0}, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->cancelPreloadRecentApps()V

    .line 589
    :cond_25
    invoke-direct {p0, v3, v2, v2}, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->performHapticFeedback(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 590
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mLongPressOnBackBehavior:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lorg/slim/action/Action;->processAction(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 591
    iput-boolean v4, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mBackConsumed:Z

    goto :goto_1

    .line 596
    :cond_26
    const/16 v0, 0xdb

    if-ne p1, v0, :cond_32

    .line 599
    if-nez p3, :cond_2b

    iget-boolean v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mAssistPressed:Z

    if-eqz v0, :cond_2b

    .line 600
    iput-boolean v2, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mAssistPressed:Z

    .line 601
    iget-boolean v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mAssistConsumed:Z

    if-eqz v0, :cond_27

    .line 602
    iput-boolean v2, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mAssistConsumed:Z

    .line 603
    return v4

    .line 606
    :cond_27
    if-eqz p4, :cond_28

    .line 607
    const-string/jumbo v0, "HardwareKeyHandler"

    const-string/jumbo v1, "Ignoring ASSIST, event canceled."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    return v4

    .line 612
    :cond_28
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapOnAssistBehavior:Ljava/lang/String;

    const-string/jumbo v1, "**null**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 613
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 614
    iput-boolean v2, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDisableVibration:Z

    .line 615
    iput-boolean v4, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mAssistDoubleTapPending:Z

    .line 616
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 617
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v2

    int-to-long v2, v2

    .line 616
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 618
    return v4

    .line 621
    :cond_29
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mPressOnAssistBehavior:Ljava/lang/String;

    const-string/jumbo v1, "**recents**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 622
    invoke-direct {p0}, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->cancelPreloadRecentApps()V

    .line 625
    :cond_2a
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mPressOnAssistBehavior:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lorg/slim/action/Action;->processAction(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 626
    return v4

    .line 630
    :cond_2b
    if-eqz p3, :cond_2f

    .line 631
    iget-boolean v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mPreloadedRecentApps:Z

    if-nez v0, :cond_2d

    .line 632
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mLongPressOnAssistBehavior:Ljava/lang/String;

    const-string/jumbo v1, "**recents**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 633
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapOnAssistBehavior:Ljava/lang/String;

    const-string/jumbo v1, "**recents**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 632
    if-nez v0, :cond_2c

    .line 634
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mPressOnAssistBehavior:Ljava/lang/String;

    const-string/jumbo v1, "**recents**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 631
    if-eqz v0, :cond_2d

    .line 635
    :cond_2c
    invoke-direct {p0}, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->preloadRecentApps()V

    .line 637
    :cond_2d
    if-nez p2, :cond_30

    .line 638
    iput-boolean v4, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mAssistPressed:Z

    .line 639
    iget-boolean v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mAssistDoubleTapPending:Z

    if-eqz v0, :cond_2f

    .line 640
    iput-boolean v2, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mAssistDoubleTapPending:Z

    .line 641
    iput-boolean v2, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDisableVibration:Z

    .line 642
    iput-boolean v4, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mAssistConsumed:Z

    .line 643
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 644
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapOnAssistBehavior:Ljava/lang/String;

    const-string/jumbo v1, "**recents**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 645
    invoke-direct {p0}, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->cancelPreloadRecentApps()V

    .line 647
    :cond_2e
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapOnAssistBehavior:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lorg/slim/action/Action;->processAction(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 661
    :cond_2f
    :goto_2
    return v4

    .line 649
    :cond_30
    if-eqz p5, :cond_2f

    .line 650
    if-nez p6, :cond_2f

    .line 651
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mLongPressOnAssistBehavior:Ljava/lang/String;

    const-string/jumbo v1, "**null**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 652
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mLongPressOnAssistBehavior:Ljava/lang/String;

    const-string/jumbo v1, "**recents**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 653
    invoke-direct {p0}, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->cancelPreloadRecentApps()V

    .line 655
    :cond_31
    invoke-direct {p0, v3, v2, v2}, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->performHapticFeedback(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 656
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mLongPressOnAssistBehavior:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lorg/slim/action/Action;->processAction(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 657
    iput-boolean v4, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mAssistConsumed:Z

    goto :goto_2

    .line 662
    :cond_32
    const/16 v0, 0x1b

    if-ne p1, v0, :cond_3e

    .line 665
    if-nez p3, :cond_37

    iget-boolean v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mCameraPressed:Z

    if-eqz v0, :cond_37

    .line 666
    iput-boolean v2, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mCameraPressed:Z

    .line 667
    iget-boolean v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mCameraConsumed:Z

    if-eqz v0, :cond_33

    .line 668
    iput-boolean v2, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mCameraConsumed:Z

    .line 669
    return v4

    .line 672
    :cond_33
    if-eqz p4, :cond_34

    .line 673
    const-string/jumbo v0, "HardwareKeyHandler"

    const-string/jumbo v1, "Ignoring CAMERA, event canceled."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    return v4

    .line 678
    :cond_34
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapOnCameraBehavior:Ljava/lang/String;

    const-string/jumbo v1, "**null**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 679
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 680
    iput-boolean v2, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDisableVibration:Z

    .line 681
    iput-boolean v4, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mCameraDoubleTapPending:Z

    .line 682
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 683
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v2

    int-to-long v2, v2

    .line 682
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 684
    return v4

    .line 687
    :cond_35
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mPressOnCameraBehavior:Ljava/lang/String;

    const-string/jumbo v1, "**recents**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 688
    invoke-direct {p0}, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->cancelPreloadRecentApps()V

    .line 691
    :cond_36
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mPressOnCameraBehavior:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lorg/slim/action/Action;->processAction(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 692
    return v4

    .line 696
    :cond_37
    if-eqz p3, :cond_3b

    .line 697
    iget-boolean v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mPreloadedRecentApps:Z

    if-nez v0, :cond_39

    .line 698
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mLongPressOnCameraBehavior:Ljava/lang/String;

    const-string/jumbo v1, "**recents**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 699
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapOnCameraBehavior:Ljava/lang/String;

    const-string/jumbo v1, "**recents**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 698
    if-nez v0, :cond_38

    .line 700
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mPressOnCameraBehavior:Ljava/lang/String;

    const-string/jumbo v1, "**recents**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 697
    if-eqz v0, :cond_39

    .line 701
    :cond_38
    invoke-direct {p0}, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->preloadRecentApps()V

    .line 703
    :cond_39
    if-nez p2, :cond_3c

    .line 704
    iput-boolean v4, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mCameraPressed:Z

    .line 705
    iget-boolean v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mCameraDoubleTapPending:Z

    if-eqz v0, :cond_3b

    .line 706
    iput-boolean v2, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mCameraDoubleTapPending:Z

    .line 707
    iput-boolean v2, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDisableVibration:Z

    .line 708
    iput-boolean v4, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mCameraConsumed:Z

    .line 709
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 710
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapOnCameraBehavior:Ljava/lang/String;

    const-string/jumbo v1, "**recents**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 711
    invoke-direct {p0}, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->cancelPreloadRecentApps()V

    .line 713
    :cond_3a
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapOnCameraBehavior:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lorg/slim/action/Action;->processAction(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 727
    :cond_3b
    :goto_3
    return v4

    .line 715
    :cond_3c
    if-eqz p5, :cond_3b

    .line 716
    if-nez p6, :cond_3b

    .line 717
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mLongPressOnCameraBehavior:Ljava/lang/String;

    const-string/jumbo v1, "**null**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 718
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mLongPressOnCameraBehavior:Ljava/lang/String;

    const-string/jumbo v1, "**recents**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 719
    invoke-direct {p0}, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->cancelPreloadRecentApps()V

    .line 721
    :cond_3d
    invoke-direct {p0, v3, v2, v2}, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->performHapticFeedback(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 722
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mLongPressOnCameraBehavior:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lorg/slim/action/Action;->processAction(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 723
    iput-boolean v4, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mCameraConsumed:Z

    goto :goto_3

    .line 728
    :cond_3e
    const/16 v0, 0xbb

    if-ne p1, v0, :cond_4a

    .line 731
    if-nez p3, :cond_43

    iget-boolean v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mAppSwitchPressed:Z

    if-eqz v0, :cond_43

    .line 732
    iput-boolean v2, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mAppSwitchPressed:Z

    .line 733
    iget-boolean v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mAppSwitchConsumed:Z

    if-eqz v0, :cond_3f

    .line 734
    iput-boolean v2, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mAppSwitchConsumed:Z

    .line 735
    return v4

    .line 738
    :cond_3f
    if-eqz p4, :cond_40

    .line 739
    const-string/jumbo v0, "HardwareKeyHandler"

    const-string/jumbo v1, "Ignoring APPSWITCH, event canceled."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    return v4

    .line 744
    :cond_40
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapOnAppSwitchBehavior:Ljava/lang/String;

    const-string/jumbo v1, "**null**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    .line 745
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 746
    iput-boolean v2, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDisableVibration:Z

    .line 747
    iput-boolean v4, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mAppSwitchDoubleTapPending:Z

    .line 748
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 749
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v2

    int-to-long v2, v2

    .line 748
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 750
    return v4

    .line 753
    :cond_41
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mPressOnAppSwitchBehavior:Ljava/lang/String;

    const-string/jumbo v1, "**recents**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    .line 754
    invoke-direct {p0}, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->cancelPreloadRecentApps()V

    .line 757
    :cond_42
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mPressOnAppSwitchBehavior:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lorg/slim/action/Action;->processAction(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 758
    return v4

    .line 762
    :cond_43
    if-eqz p3, :cond_47

    .line 763
    iget-boolean v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mPreloadedRecentApps:Z

    if-nez v0, :cond_45

    .line 764
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mLongPressOnAppSwitchBehavior:Ljava/lang/String;

    const-string/jumbo v1, "**recents**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_44

    .line 765
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapOnAppSwitchBehavior:Ljava/lang/String;

    const-string/jumbo v1, "**recents**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 764
    if-nez v0, :cond_44

    .line 766
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mPressOnAppSwitchBehavior:Ljava/lang/String;

    const-string/jumbo v1, "**recents**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 763
    if-eqz v0, :cond_45

    .line 767
    :cond_44
    invoke-direct {p0}, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->preloadRecentApps()V

    .line 769
    :cond_45
    if-nez p2, :cond_48

    .line 770
    iput-boolean v4, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mAppSwitchPressed:Z

    .line 771
    iget-boolean v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mAppSwitchDoubleTapPending:Z

    if-eqz v0, :cond_47

    .line 772
    iput-boolean v2, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mAppSwitchDoubleTapPending:Z

    .line 773
    iput-boolean v2, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDisableVibration:Z

    .line 774
    iput-boolean v4, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mAppSwitchConsumed:Z

    .line 775
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 776
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapOnAppSwitchBehavior:Ljava/lang/String;

    .line 777
    const-string/jumbo v1, "**recents**"

    .line 776
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    .line 778
    invoke-direct {p0}, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->cancelPreloadRecentApps()V

    .line 780
    :cond_46
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mDoubleTapOnAppSwitchBehavior:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lorg/slim/action/Action;->processAction(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 796
    :cond_47
    :goto_4
    return v4

    .line 782
    :cond_48
    if-eqz p5, :cond_47

    .line 783
    if-nez p6, :cond_47

    .line 784
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mLongPressOnAppSwitchBehavior:Ljava/lang/String;

    .line 785
    const-string/jumbo v1, "**null**"

    .line 784
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    .line 786
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mLongPressOnAppSwitchBehavior:Ljava/lang/String;

    .line 787
    const-string/jumbo v1, "**recents**"

    .line 786
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_49

    .line 788
    invoke-direct {p0}, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->cancelPreloadRecentApps()V

    .line 790
    :cond_49
    invoke-direct {p0, v3, v2, v2}, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->performHapticFeedback(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 791
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mLongPressOnAppSwitchBehavior:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lorg/slim/action/Action;->processAction(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 792
    iput-boolean v4, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mAppSwitchConsumed:Z

    goto :goto_4

    .line 798
    :cond_4a
    return v2
.end method

.method public isHwKeysDisabled()Z
    .locals 1

    .prologue
    .line 375
    iget-boolean v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mKeysDisabled:Z

    return v0
.end method
