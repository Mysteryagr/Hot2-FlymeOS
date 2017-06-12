.class Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$6;
.super Ljava/lang/Object;
.source "ActionListViewSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;

.field final synthetic val$newAction:Z

.field final synthetic val$which:I


# direct methods
.method constructor <init>(Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;ZI)V
    .locals 0
    .param p1, "this$1"    # Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;
    .param p2, "val$newAction"    # Z
    .param p3, "val$which"    # I

    .prologue
    .line 1007
    iput-object p1, p0, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$6;->this$1:Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;

    iput-boolean p2, p0, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$6;->val$newAction:Z

    iput p3, p0, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$6;->val$which:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    const/4 v1, 0x0

    .line 1009
    iget-boolean v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$6;->val$newAction:Z

    if-nez v0, :cond_0

    .line 1010
    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$6;->this$1:Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;

    invoke-virtual {v0}, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;->getOwner()Lorg/slim/preference/dslv/ActionListViewSettings;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/slim/preference/dslv/ActionListViewSettings;->-set4(Lorg/slim/preference/dslv/ActionListViewSettings;Lorg/slim/action/ActionConfig;)Lorg/slim/action/ActionConfig;

    .line 1011
    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$6;->this$1:Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;

    invoke-virtual {v0}, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;->getOwner()Lorg/slim/preference/dslv/ActionListViewSettings;

    move-result-object v0

    iget-object v2, p0, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$6;->this$1:Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;

    invoke-virtual {v2}, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;->getOwner()Lorg/slim/preference/dslv/ActionListViewSettings;

    move-result-object v2

    invoke-static {v2}, Lorg/slim/preference/dslv/ActionListViewSettings;->-get0(Lorg/slim/preference/dslv/ActionListViewSettings;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lorg/slim/preference/dslv/ActionListViewSettings;->-wrap3(Lorg/slim/preference/dslv/ActionListViewSettings;Ljava/util/ArrayList;Z)V

    .line 1013
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 1014
    iget-boolean v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$6;->val$newAction:Z

    if-eqz v0, :cond_1

    .line 1015
    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$6;->this$1:Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;

    invoke-virtual {v0}, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;->getOwner()Lorg/slim/preference/dslv/ActionListViewSettings;

    move-result-object v0

    .line 1016
    iget v2, p0, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$6;->val$which:I

    move v3, v1

    move v4, v1

    move v5, v1

    .line 1015
    invoke-static/range {v0 .. v5}, Lorg/slim/preference/dslv/ActionListViewSettings;->-wrap4(Lorg/slim/preference/dslv/ActionListViewSettings;IIZZZ)V

    .line 1008
    :cond_1
    return-void
.end method
