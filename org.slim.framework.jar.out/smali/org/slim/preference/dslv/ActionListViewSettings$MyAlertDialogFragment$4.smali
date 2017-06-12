.class Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$4;
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

.field final synthetic val$doubletap:Z

.field final synthetic val$finalDialogEntries:[Ljava/lang/String;

.field final synthetic val$finalDialogValues:[Ljava/lang/String;

.field final synthetic val$longpress:Z

.field final synthetic val$newAction:Z

.field final synthetic val$which:I


# direct methods
.method constructor <init>(Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;[Ljava/lang/String;IZZZ[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;
    .param p2, "val$finalDialogValues"    # [Ljava/lang/String;
    .param p3, "val$which"    # I
    .param p4, "val$longpress"    # Z
    .param p5, "val$doubletap"    # Z
    .param p6, "val$newAction"    # Z
    .param p7, "val$finalDialogEntries"    # [Ljava/lang/String;

    .prologue
    .line 908
    iput-object p1, p0, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$4;->this$1:Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;

    iput-object p2, p0, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$4;->val$finalDialogValues:[Ljava/lang/String;

    iput p3, p0, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$4;->val$which:I

    iput-boolean p4, p0, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$4;->val$longpress:Z

    iput-boolean p5, p0, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$4;->val$doubletap:Z

    iput-boolean p6, p0, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$4;->val$newAction:Z

    iput-object p7, p0, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$4;->val$finalDialogEntries:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    const/4 v3, 0x0

    .line 910
    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$4;->val$finalDialogValues:[Ljava/lang/String;

    aget-object v0, v0, p2

    const-string/jumbo v1, "**app**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 911
    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$4;->this$1:Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;

    invoke-virtual {v0}, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;->getOwner()Lorg/slim/preference/dslv/ActionListViewSettings;

    move-result-object v0

    invoke-static {v0}, Lorg/slim/preference/dslv/ActionListViewSettings;->-get12(Lorg/slim/preference/dslv/ActionListViewSettings;)Lorg/slim/utils/ShortcutPickerHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 912
    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$4;->this$1:Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;

    invoke-virtual {v0}, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;->getOwner()Lorg/slim/preference/dslv/ActionListViewSettings;

    move-result-object v0

    iget v1, p0, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$4;->val$which:I

    invoke-static {v0, v1}, Lorg/slim/preference/dslv/ActionListViewSettings;->-set1(Lorg/slim/preference/dslv/ActionListViewSettings;I)I

    .line 913
    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$4;->this$1:Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;

    invoke-virtual {v0}, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;->getOwner()Lorg/slim/preference/dslv/ActionListViewSettings;

    move-result-object v0

    iget-boolean v1, p0, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$4;->val$longpress:Z

    invoke-static {v0, v1}, Lorg/slim/preference/dslv/ActionListViewSettings;->-set2(Lorg/slim/preference/dslv/ActionListViewSettings;Z)Z

    .line 914
    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$4;->this$1:Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;

    invoke-virtual {v0}, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;->getOwner()Lorg/slim/preference/dslv/ActionListViewSettings;

    move-result-object v0

    iget-boolean v1, p0, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$4;->val$doubletap:Z

    invoke-static {v0, v1}, Lorg/slim/preference/dslv/ActionListViewSettings;->-set0(Lorg/slim/preference/dslv/ActionListViewSettings;Z)Z

    .line 915
    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$4;->this$1:Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;

    invoke-virtual {v0}, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;->getOwner()Lorg/slim/preference/dslv/ActionListViewSettings;

    move-result-object v0

    iget-boolean v1, p0, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$4;->val$newAction:Z

    invoke-static {v0, v1}, Lorg/slim/preference/dslv/ActionListViewSettings;->-set3(Lorg/slim/preference/dslv/ActionListViewSettings;Z)Z

    .line 916
    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$4;->this$1:Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;

    invoke-virtual {v0}, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;->getOwner()Lorg/slim/preference/dslv/ActionListViewSettings;

    move-result-object v0

    invoke-static {v0}, Lorg/slim/preference/dslv/ActionListViewSettings;->-get12(Lorg/slim/preference/dslv/ActionListViewSettings;)Lorg/slim/utils/ShortcutPickerHelper;

    move-result-object v0

    iget-object v1, p0, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$4;->this$1:Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;

    invoke-virtual {v1}, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;->getOwner()Lorg/slim/preference/dslv/ActionListViewSettings;

    move-result-object v1

    invoke-virtual {v1}, Lorg/slim/preference/dslv/ActionListViewSettings;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/slim/utils/ShortcutPickerHelper;->pickShortcut(I)V

    .line 909
    :cond_0
    :goto_0
    return-void

    .line 919
    :cond_1
    iget-boolean v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$4;->val$newAction:Z

    if-eqz v0, :cond_2

    .line 920
    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$4;->this$1:Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;

    invoke-virtual {v0}, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;->getOwner()Lorg/slim/preference/dslv/ActionListViewSettings;

    move-result-object v0

    iget-object v1, p0, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$4;->val$finalDialogValues:[Ljava/lang/String;

    aget-object v1, v1, p2

    .line 921
    iget-object v2, p0, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$4;->val$finalDialogEntries:[Ljava/lang/String;

    aget-object v2, v2, p2

    .line 920
    invoke-static {v0, v1, v2}, Lorg/slim/preference/dslv/ActionListViewSettings;->-wrap1(Lorg/slim/preference/dslv/ActionListViewSettings;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 923
    :cond_2
    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$4;->this$1:Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;

    invoke-virtual {v0}, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;->getOwner()Lorg/slim/preference/dslv/ActionListViewSettings;

    move-result-object v0

    iget-object v1, p0, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$4;->val$finalDialogValues:[Ljava/lang/String;

    aget-object v1, v1, p2

    .line 924
    iget-object v2, p0, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$4;->val$finalDialogEntries:[Ljava/lang/String;

    aget-object v2, v2, p2

    .line 925
    iget v4, p0, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$4;->val$which:I

    iget-boolean v5, p0, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$4;->val$longpress:Z

    iget-boolean v6, p0, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$4;->val$doubletap:Z

    .line 923
    invoke-static/range {v0 .. v6}, Lorg/slim/preference/dslv/ActionListViewSettings;->-wrap6(Lorg/slim/preference/dslv/ActionListViewSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V

    goto :goto_0
.end method
