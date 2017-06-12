.class final Lcom/android/server/policy/GlobalActions$RebootAction;
.super Lcom/android/server/policy/GlobalActions$SinglePressAction;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RebootAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/GlobalActions;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 374
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$RebootAction;->this$0:Lcom/android/server/policy/GlobalActions;

    .line 375
    const v0, 0x1080363

    .line 376
    const v1, 0x1040172

    .line 375
    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/GlobalActions$SinglePressAction;-><init>(II)V

    .line 374
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$RebootAction;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalActions$RebootAction;-><init>(Lcom/android/server/policy/GlobalActions;)V

    return-void
.end method


# virtual methods
.method public onPress()V
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$RebootAction;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->-get12(Lcom/android/server/policy/GlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->reboot()V

    .line 390
    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 386
    const/4 v0, 0x1

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 381
    const/4 v0, 0x1

    return v0
.end method
