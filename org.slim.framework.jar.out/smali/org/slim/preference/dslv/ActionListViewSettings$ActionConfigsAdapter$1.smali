.class Lorg/slim/preference/dslv/ActionListViewSettings$ActionConfigsAdapter$1;
.super Ljava/lang/Object;
.source "ActionListViewSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/slim/preference/dslv/ActionListViewSettings$ActionConfigsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/slim/preference/dslv/ActionListViewSettings$ActionConfigsAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lorg/slim/preference/dslv/ActionListViewSettings$ActionConfigsAdapter;I)V
    .locals 0
    .param p1, "this$1"    # Lorg/slim/preference/dslv/ActionListViewSettings$ActionConfigsAdapter;
    .param p2, "val$position"    # I

    .prologue
    .line 733
    iput-object p1, p0, Lorg/slim/preference/dslv/ActionListViewSettings$ActionConfigsAdapter$1;->this$1:Lorg/slim/preference/dslv/ActionListViewSettings$ActionConfigsAdapter;

    iput p2, p0, Lorg/slim/preference/dslv/ActionListViewSettings$ActionConfigsAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 736
    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings$ActionConfigsAdapter$1;->this$1:Lorg/slim/preference/dslv/ActionListViewSettings$ActionConfigsAdapter;

    iget-object v0, v0, Lorg/slim/preference/dslv/ActionListViewSettings$ActionConfigsAdapter;->this$0:Lorg/slim/preference/dslv/ActionListViewSettings;

    iget v1, p0, Lorg/slim/preference/dslv/ActionListViewSettings$ActionConfigsAdapter$1;->val$position:I

    invoke-static {v0, v1}, Lorg/slim/preference/dslv/ActionListViewSettings;->-set1(Lorg/slim/preference/dslv/ActionListViewSettings;I)I

    .line 737
    iget-object v0, p0, Lorg/slim/preference/dslv/ActionListViewSettings$ActionConfigsAdapter$1;->this$1:Lorg/slim/preference/dslv/ActionListViewSettings$ActionConfigsAdapter;

    iget-object v0, v0, Lorg/slim/preference/dslv/ActionListViewSettings$ActionConfigsAdapter;->this$0:Lorg/slim/preference/dslv/ActionListViewSettings;

    const/4 v1, 0x1

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-static/range {v0 .. v5}, Lorg/slim/preference/dslv/ActionListViewSettings;->-wrap4(Lorg/slim/preference/dslv/ActionListViewSettings;IIZZZ)V

    .line 735
    return-void
.end method
