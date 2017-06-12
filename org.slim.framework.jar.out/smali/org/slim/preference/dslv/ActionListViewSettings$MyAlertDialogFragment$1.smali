.class Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$1;
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


# direct methods
.method constructor <init>(Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;)V
    .locals 0
    .param p1, "this$1"    # Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;

    .prologue
    .line 787
    iput-object p1, p0, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$1;->this$1:Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 13
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v1, 0x0

    .line 790
    iget-object v2, p0, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$1;->this$1:Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;

    invoke-virtual {v2}, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;->getOwner()Lorg/slim/preference/dslv/ActionListViewSettings;

    move-result-object v2

    invoke-static {v2}, Lorg/slim/preference/dslv/ActionListViewSettings;->-wrap0(Lorg/slim/preference/dslv/ActionListViewSettings;)Ljava/util/ArrayList;

    move-result-object v8

    .line 791
    .local v8, "actionConfigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/slim/action/ActionConfig;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v9, v2, :cond_0

    .line 792
    iget-object v2, p0, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$1;->this$1:Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;

    invoke-virtual {v2}, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;->getOwner()Lorg/slim/preference/dslv/ActionListViewSettings;

    move-result-object v3

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/slim/action/ActionConfig;

    invoke-static {v3, v2, v11}, Lorg/slim/preference/dslv/ActionListViewSettings;->-wrap2(Lorg/slim/preference/dslv/ActionListViewSettings;Lorg/slim/action/ActionConfig;Z)V

    .line 791
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 796
    :cond_0
    iget-object v2, p0, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$1;->this$1:Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;

    invoke-virtual {v2}, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;->getOwner()Lorg/slim/preference/dslv/ActionListViewSettings;

    move-result-object v2

    invoke-static {v2, v1, v11}, Lorg/slim/preference/dslv/ActionListViewSettings;->-wrap3(Lorg/slim/preference/dslv/ActionListViewSettings;Ljava/util/ArrayList;Z)V

    .line 797
    iget-object v2, p0, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$1;->this$1:Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;

    invoke-virtual {v2}, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;->getOwner()Lorg/slim/preference/dslv/ActionListViewSettings;

    move-result-object v2

    invoke-static {v2}, Lorg/slim/preference/dslv/ActionListViewSettings;->-get1(Lorg/slim/preference/dslv/ActionListViewSettings;)Lorg/slim/preference/dslv/ActionListViewSettings$ActionConfigsAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/slim/preference/dslv/ActionListViewSettings$ActionConfigsAdapter;->clear()V

    .line 800
    iget-object v2, p0, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$1;->this$1:Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;

    invoke-virtual {v2}, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;->getOwner()Lorg/slim/preference/dslv/ActionListViewSettings;

    move-result-object v2

    invoke-static {v2}, Lorg/slim/preference/dslv/ActionListViewSettings;->-wrap0(Lorg/slim/preference/dslv/ActionListViewSettings;)Ljava/util/ArrayList;

    move-result-object v8

    .line 801
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 802
    .local v10, "newConfigsSize":I
    const/4 v9, 0x0

    :goto_1
    if-ge v9, v10, :cond_1

    .line 803
    iget-object v2, p0, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$1;->this$1:Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;

    invoke-virtual {v2}, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;->getOwner()Lorg/slim/preference/dslv/ActionListViewSettings;

    move-result-object v2

    invoke-static {v2}, Lorg/slim/preference/dslv/ActionListViewSettings;->-get1(Lorg/slim/preference/dslv/ActionListViewSettings;)Lorg/slim/preference/dslv/ActionListViewSettings$ActionConfigsAdapter;

    move-result-object v3

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/slim/action/ActionConfig;

    invoke-virtual {v3, v2}, Lorg/slim/preference/dslv/ActionListViewSettings$ActionConfigsAdapter;->add(Ljava/lang/Object;)V

    .line 802
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 809
    :cond_1
    if-nez v10, :cond_2

    .line 811
    new-instance v0, Lorg/slim/action/ActionConfig;

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    move-object v7, v1

    invoke-direct/range {v0 .. v7}, Lorg/slim/action/ActionConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    .local v0, "emptyAction":Lorg/slim/action/ActionConfig;
    iget-object v1, p0, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$1;->this$1:Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;

    invoke-virtual {v1}, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;->getOwner()Lorg/slim/preference/dslv/ActionListViewSettings;

    move-result-object v1

    invoke-static {v1}, Lorg/slim/preference/dslv/ActionListViewSettings;->-get1(Lorg/slim/preference/dslv/ActionListViewSettings;)Lorg/slim/preference/dslv/ActionListViewSettings$ActionConfigsAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/slim/preference/dslv/ActionListViewSettings$ActionConfigsAdapter;->add(Ljava/lang/Object;)V

    .line 813
    iget-object v1, p0, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$1;->this$1:Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;

    invoke-virtual {v1}, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;->getOwner()Lorg/slim/preference/dslv/ActionListViewSettings;

    move-result-object v1

    invoke-static {v1}, Lorg/slim/preference/dslv/ActionListViewSettings;->-get1(Lorg/slim/preference/dslv/ActionListViewSettings;)Lorg/slim/preference/dslv/ActionListViewSettings$ActionConfigsAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/slim/preference/dslv/ActionListViewSettings$ActionConfigsAdapter;->remove(Ljava/lang/Object;)V

    .line 815
    .end local v0    # "emptyAction":Lorg/slim/action/ActionConfig;
    :cond_2
    iget-object v1, p0, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$1;->this$1:Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;

    invoke-virtual {v1}, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;->getOwner()Lorg/slim/preference/dslv/ActionListViewSettings;

    move-result-object v2

    if-nez v10, :cond_3

    move v1, v11

    :goto_2
    invoke-static {v2, v1}, Lorg/slim/preference/dslv/ActionListViewSettings;->-wrap5(Lorg/slim/preference/dslv/ActionListViewSettings;Z)V

    .line 788
    return-void

    :cond_3
    move v1, v12

    .line 815
    goto :goto_2
.end method
