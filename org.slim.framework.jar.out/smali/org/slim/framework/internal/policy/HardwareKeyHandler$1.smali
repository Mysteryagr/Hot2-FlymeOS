.class Lorg/slim/framework/internal/policy/HardwareKeyHandler$1;
.super Ljava/lang/Object;
.source "HardwareKeyHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/slim/framework/internal/policy/HardwareKeyHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/slim/framework/internal/policy/HardwareKeyHandler;


# direct methods
.method constructor <init>(Lorg/slim/framework/internal/policy/HardwareKeyHandler;)V
    .locals 0
    .param p1, "this$0"    # Lorg/slim/framework/internal/policy/HardwareKeyHandler;

    .prologue
    .line 127
    iput-object p1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler$1;->this$0:Lorg/slim/framework/internal/policy/HardwareKeyHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 130
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler$1;->this$0:Lorg/slim/framework/internal/policy/HardwareKeyHandler;

    iget-boolean v0, v0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mHomeDoubleTapPending:Z

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler$1;->this$0:Lorg/slim/framework/internal/policy/HardwareKeyHandler;

    iput-boolean v2, v0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mHomeDoubleTapPending:Z

    .line 132
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler$1;->this$0:Lorg/slim/framework/internal/policy/HardwareKeyHandler;

    invoke-static {v0}, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->-get5(Lorg/slim/framework/internal/policy/HardwareKeyHandler;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "**recents**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler$1;->this$0:Lorg/slim/framework/internal/policy/HardwareKeyHandler;

    invoke-static {v0}, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->-wrap0(Lorg/slim/framework/internal/policy/HardwareKeyHandler;)V

    .line 136
    :cond_0
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler$1;->this$0:Lorg/slim/framework/internal/policy/HardwareKeyHandler;

    invoke-static {v0}, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->-get0(Lorg/slim/framework/internal/policy/HardwareKeyHandler;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler$1;->this$0:Lorg/slim/framework/internal/policy/HardwareKeyHandler;

    invoke-static {v1}, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->-get5(Lorg/slim/framework/internal/policy/HardwareKeyHandler;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lorg/slim/action/Action;->processAction(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 138
    :cond_1
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler$1;->this$0:Lorg/slim/framework/internal/policy/HardwareKeyHandler;

    iget-boolean v0, v0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mMenuDoubleTapPending:Z

    if-eqz v0, :cond_3

    .line 139
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler$1;->this$0:Lorg/slim/framework/internal/policy/HardwareKeyHandler;

    iput-boolean v2, v0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mMenuDoubleTapPending:Z

    .line 140
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler$1;->this$0:Lorg/slim/framework/internal/policy/HardwareKeyHandler;

    invoke-static {v0}, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->-get6(Lorg/slim/framework/internal/policy/HardwareKeyHandler;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "**recents**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 141
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler$1;->this$0:Lorg/slim/framework/internal/policy/HardwareKeyHandler;

    invoke-static {v0}, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->-wrap0(Lorg/slim/framework/internal/policy/HardwareKeyHandler;)V

    .line 144
    :cond_2
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler$1;->this$0:Lorg/slim/framework/internal/policy/HardwareKeyHandler;

    invoke-static {v0}, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->-get0(Lorg/slim/framework/internal/policy/HardwareKeyHandler;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler$1;->this$0:Lorg/slim/framework/internal/policy/HardwareKeyHandler;

    invoke-static {v1}, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->-get6(Lorg/slim/framework/internal/policy/HardwareKeyHandler;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lorg/slim/action/Action;->processAction(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 146
    :cond_3
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler$1;->this$0:Lorg/slim/framework/internal/policy/HardwareKeyHandler;

    iget-boolean v0, v0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mBackDoubleTapPending:Z

    if-eqz v0, :cond_5

    .line 147
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler$1;->this$0:Lorg/slim/framework/internal/policy/HardwareKeyHandler;

    iput-boolean v2, v0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mBackDoubleTapPending:Z

    .line 148
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler$1;->this$0:Lorg/slim/framework/internal/policy/HardwareKeyHandler;

    invoke-static {v0}, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->-get3(Lorg/slim/framework/internal/policy/HardwareKeyHandler;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "**recents**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 149
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler$1;->this$0:Lorg/slim/framework/internal/policy/HardwareKeyHandler;

    invoke-static {v0}, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->-wrap0(Lorg/slim/framework/internal/policy/HardwareKeyHandler;)V

    .line 152
    :cond_4
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler$1;->this$0:Lorg/slim/framework/internal/policy/HardwareKeyHandler;

    invoke-static {v0}, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->-get0(Lorg/slim/framework/internal/policy/HardwareKeyHandler;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler$1;->this$0:Lorg/slim/framework/internal/policy/HardwareKeyHandler;

    invoke-static {v1}, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->-get3(Lorg/slim/framework/internal/policy/HardwareKeyHandler;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lorg/slim/action/Action;->processAction(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 154
    :cond_5
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler$1;->this$0:Lorg/slim/framework/internal/policy/HardwareKeyHandler;

    iget-boolean v0, v0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mAppSwitchDoubleTapPending:Z

    if-eqz v0, :cond_7

    .line 155
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler$1;->this$0:Lorg/slim/framework/internal/policy/HardwareKeyHandler;

    iput-boolean v2, v0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mAppSwitchDoubleTapPending:Z

    .line 156
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler$1;->this$0:Lorg/slim/framework/internal/policy/HardwareKeyHandler;

    invoke-static {v0}, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->-get1(Lorg/slim/framework/internal/policy/HardwareKeyHandler;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "**recents**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 157
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler$1;->this$0:Lorg/slim/framework/internal/policy/HardwareKeyHandler;

    invoke-static {v0}, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->-wrap0(Lorg/slim/framework/internal/policy/HardwareKeyHandler;)V

    .line 160
    :cond_6
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler$1;->this$0:Lorg/slim/framework/internal/policy/HardwareKeyHandler;

    invoke-static {v0}, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->-get0(Lorg/slim/framework/internal/policy/HardwareKeyHandler;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler$1;->this$0:Lorg/slim/framework/internal/policy/HardwareKeyHandler;

    invoke-static {v1}, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->-get1(Lorg/slim/framework/internal/policy/HardwareKeyHandler;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lorg/slim/action/Action;->processAction(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 162
    :cond_7
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler$1;->this$0:Lorg/slim/framework/internal/policy/HardwareKeyHandler;

    iget-boolean v0, v0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mAssistDoubleTapPending:Z

    if-eqz v0, :cond_9

    .line 163
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler$1;->this$0:Lorg/slim/framework/internal/policy/HardwareKeyHandler;

    iput-boolean v2, v0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mAssistDoubleTapPending:Z

    .line 164
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler$1;->this$0:Lorg/slim/framework/internal/policy/HardwareKeyHandler;

    invoke-static {v0}, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->-get2(Lorg/slim/framework/internal/policy/HardwareKeyHandler;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "**recents**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 165
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler$1;->this$0:Lorg/slim/framework/internal/policy/HardwareKeyHandler;

    invoke-static {v0}, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->-wrap0(Lorg/slim/framework/internal/policy/HardwareKeyHandler;)V

    .line 168
    :cond_8
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler$1;->this$0:Lorg/slim/framework/internal/policy/HardwareKeyHandler;

    invoke-static {v0}, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->-get0(Lorg/slim/framework/internal/policy/HardwareKeyHandler;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler$1;->this$0:Lorg/slim/framework/internal/policy/HardwareKeyHandler;

    invoke-static {v1}, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->-get2(Lorg/slim/framework/internal/policy/HardwareKeyHandler;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lorg/slim/action/Action;->processAction(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 170
    :cond_9
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler$1;->this$0:Lorg/slim/framework/internal/policy/HardwareKeyHandler;

    iget-boolean v0, v0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mCameraDoubleTapPending:Z

    if-eqz v0, :cond_b

    .line 171
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler$1;->this$0:Lorg/slim/framework/internal/policy/HardwareKeyHandler;

    iput-boolean v2, v0, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->mCameraDoubleTapPending:Z

    .line 172
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler$1;->this$0:Lorg/slim/framework/internal/policy/HardwareKeyHandler;

    invoke-static {v0}, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->-get4(Lorg/slim/framework/internal/policy/HardwareKeyHandler;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "**recents**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 173
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler$1;->this$0:Lorg/slim/framework/internal/policy/HardwareKeyHandler;

    invoke-static {v0}, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->-wrap0(Lorg/slim/framework/internal/policy/HardwareKeyHandler;)V

    .line 176
    :cond_a
    iget-object v0, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler$1;->this$0:Lorg/slim/framework/internal/policy/HardwareKeyHandler;

    invoke-static {v0}, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->-get0(Lorg/slim/framework/internal/policy/HardwareKeyHandler;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/slim/framework/internal/policy/HardwareKeyHandler$1;->this$0:Lorg/slim/framework/internal/policy/HardwareKeyHandler;

    invoke-static {v1}, Lorg/slim/framework/internal/policy/HardwareKeyHandler;->-get4(Lorg/slim/framework/internal/policy/HardwareKeyHandler;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lorg/slim/action/Action;->processAction(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 129
    :cond_b
    return-void
.end method
