.class Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$7;
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
    .line 1021
    iput-object p1, p0, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$7;->this$1:Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;

    iput-boolean p2, p0, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$7;->val$newAction:Z

    iput p3, p0, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$7;->val$which:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 1023
    iget-boolean v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$7;->val$newAction:Z

    if-nez v0, :cond_0

    .line 1024
    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$7;->this$1:Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;

    invoke-virtual {v0}, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;->getOwner()Lorg/slim/preference/dslv/ActionListViewSettings;

    move-result-object v0

    invoke-static {v0}, Lorg/slim/preference/dslv/ActionListViewSettings;->-get1(Lorg/slim/preference/dslv/ActionListViewSettings;)Lorg/slim/preference/dslv/ActionListViewSettings$ActionConfigsAdapter;

    move-result-object v0

    .line 1025
    iget-object v1, p0, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$7;->this$1:Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;

    invoke-virtual {v1}, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;->getOwner()Lorg/slim/preference/dslv/ActionListViewSettings;

    move-result-object v1

    invoke-static {v1}, Lorg/slim/preference/dslv/ActionListViewSettings;->-get13(Lorg/slim/preference/dslv/ActionListViewSettings;)Lorg/slim/action/ActionConfig;

    move-result-object v1

    iget v2, p0, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$7;->val$which:I

    .line 1024
    invoke-virtual {v0, v1, v2}, Lorg/slim/preference/dslv/ActionListViewSettings$ActionConfigsAdapter;->insert(Ljava/lang/Object;I)V

    .line 1026
    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$7;->this$1:Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;

    invoke-virtual {v0}, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;->getOwner()Lorg/slim/preference/dslv/ActionListViewSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/slim/preference/dslv/ActionListViewSettings;->-set4(Lorg/slim/preference/dslv/ActionListViewSettings;Lorg/slim/action/ActionConfig;)Lorg/slim/action/ActionConfig;

    .line 1028
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 1022
    return-void
.end method
