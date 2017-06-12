.class Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$5$1;
.super Ljava/lang/Object;
.source "ActionListViewSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$5;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$5;

.field final synthetic val$holoDialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$5;Landroid/app/Dialog;)V
    .locals 0
    .param p1, "this$2"    # Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$5;
    .param p2, "val$holoDialog"    # Landroid/app/Dialog;

    .prologue
    .line 952
    iput-object p1, p0, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$5$1;->this$2:Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$5;

    iput-object p2, p0, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$5$1;->val$holoDialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 956
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v7

    check-cast v7, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$IconAdapter;

    .line 957
    .local v7, "adapter":Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$IconAdapter;
    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$5$1;->this$2:Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$5;

    iget-object v0, v0, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$5;->this$1:Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;

    invoke-virtual {v0}, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;->getOwner()Lorg/slim/preference/dslv/ActionListViewSettings;

    move-result-object v0

    .line 958
    invoke-virtual {v7, p3}, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$IconAdapter;->getItemReference(I)Ljava/lang/String;

    move-result-object v3

    .line 959
    iget-object v2, p0, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$5$1;->this$2:Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$5;

    iget-object v2, v2, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$5;->this$1:Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;

    invoke-virtual {v2}, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;->getOwner()Lorg/slim/preference/dslv/ActionListViewSettings;

    move-result-object v2

    invoke-static {v2}, Lorg/slim/preference/dslv/ActionListViewSettings;->-get11(Lorg/slim/preference/dslv/ActionListViewSettings;)I

    move-result v4

    move-object v2, v1

    move v6, v5

    .line 957
    invoke-static/range {v0 .. v6}, Lorg/slim/preference/dslv/ActionListViewSettings;->-wrap6(Lorg/slim/preference/dslv/ActionListViewSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V

    .line 960
    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$5$1;->this$2:Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$5;

    iget-object v0, v0, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$5;->this$1:Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;

    invoke-virtual {v0}, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment;->getOwner()Lorg/slim/preference/dslv/ActionListViewSettings;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lorg/slim/preference/dslv/ActionListViewSettings;->-set1(Lorg/slim/preference/dslv/ActionListViewSettings;I)I

    .line 961
    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings$MyAlertDialogFragment$5$1;->val$holoDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 955
    return-void
.end method
