.class Lorg/slim/preference/dslv/DragSortListView$AdapterWrapper;
.super Landroid/widget/BaseAdapter;
.source "DragSortListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/slim/preference/dslv/DragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdapterWrapper"
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field final synthetic this$0:Lorg/slim/preference/dslv/DragSortListView;


# direct methods
.method public constructor <init>(Lorg/slim/preference/dslv/DragSortListView;Landroid/widget/ListAdapter;)V
    .locals 2
    .param p1, "this$0"    # Lorg/slim/preference/dslv/DragSortListView;
    .param p2, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 661
    iput-object p1, p0, Lorg/slim/preference/dslv/DragSortListView$AdapterWrapper;->this$0:Lorg/slim/preference/dslv/DragSortListView;

    .line 662
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 663
    iput-object p2, p0, Lorg/slim/preference/dslv/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    .line 665
    iget-object v0, p0, Lorg/slim/preference/dslv/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    new-instance v1, Lorg/slim/preference/dslv/DragSortListView$AdapterWrapper$1;

    invoke-direct {v1, p0}, Lorg/slim/preference/dslv/DragSortListView$AdapterWrapper$1;-><init>(Lorg/slim/preference/dslv/DragSortListView$AdapterWrapper;)V

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 661
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 697
    iget-object v0, p0, Lorg/slim/preference/dslv/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 677
    iget-object v0, p0, Lorg/slim/preference/dslv/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 692
    iget-object v0, p0, Lorg/slim/preference/dslv/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 687
    iget-object v0, p0, Lorg/slim/preference/dslv/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 682
    iget-object v0, p0, Lorg/slim/preference/dslv/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 707
    iget-object v0, p0, Lorg/slim/preference/dslv/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 733
    if-eqz p2, :cond_2

    move-object v2, p2

    .line 734
    check-cast v2, Lorg/slim/preference/dslv/DragSortItemView;

    .line 735
    .local v2, "v":Lorg/slim/preference/dslv/DragSortItemView;
    invoke-virtual {v2, v6}, Lorg/slim/preference/dslv/DragSortItemView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 737
    .local v1, "oldChild":Landroid/view/View;
    iget-object v3, p0, Lorg/slim/preference/dslv/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v4, p0, Lorg/slim/preference/dslv/DragSortListView$AdapterWrapper;->this$0:Lorg/slim/preference/dslv/DragSortListView;

    invoke-interface {v3, p1, v1, v4}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 738
    .local v0, "child":Landroid/view/View;
    if-eq v0, v1, :cond_1

    .line 741
    if-eqz v1, :cond_0

    .line 742
    invoke-virtual {v2, v6}, Lorg/slim/preference/dslv/DragSortItemView;->removeViewAt(I)V

    .line 744
    :cond_0
    invoke-virtual {v2, v0}, Lorg/slim/preference/dslv/DragSortItemView;->addView(Landroid/view/View;)V

    .line 757
    .end local v1    # "oldChild":Landroid/view/View;
    :cond_1
    :goto_0
    iget-object v3, p0, Lorg/slim/preference/dslv/DragSortListView$AdapterWrapper;->this$0:Lorg/slim/preference/dslv/DragSortListView;

    iget-object v4, p0, Lorg/slim/preference/dslv/DragSortListView$AdapterWrapper;->this$0:Lorg/slim/preference/dslv/DragSortListView;

    invoke-virtual {v4}, Lorg/slim/preference/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v4

    add-int/2addr v4, p1

    const/4 v5, 0x1

    invoke-static {v3, v4, v2, v5}, Lorg/slim/preference/dslv/DragSortListView;->-wrap4(Lorg/slim/preference/dslv/DragSortListView;ILandroid/view/View;Z)V

    .line 759
    return-object v2

    .line 747
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "v":Lorg/slim/preference/dslv/DragSortItemView;
    :cond_2
    iget-object v3, p0, Lorg/slim/preference/dslv/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v4, p0, Lorg/slim/preference/dslv/DragSortListView$AdapterWrapper;->this$0:Lorg/slim/preference/dslv/DragSortListView;

    invoke-interface {v3, p1, v5, v4}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 748
    .restart local v0    # "child":Landroid/view/View;
    new-instance v2, Lorg/slim/preference/dslv/DragSortItemView;

    iget-object v3, p0, Lorg/slim/preference/dslv/DragSortListView$AdapterWrapper;->this$0:Lorg/slim/preference/dslv/DragSortListView;

    invoke-virtual {v3}, Lorg/slim/preference/dslv/DragSortListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/slim/preference/dslv/DragSortItemView;-><init>(Landroid/content/Context;)V

    .line 749
    .restart local v2    # "v":Lorg/slim/preference/dslv/DragSortItemView;
    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    .line 750
    const/4 v4, -0x1

    .line 751
    const/4 v5, -0x2

    .line 749
    invoke-direct {v3, v4, v5}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Lorg/slim/preference/dslv/DragSortItemView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 752
    invoke-virtual {v2, v0}, Lorg/slim/preference/dslv/DragSortItemView;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 712
    iget-object v0, p0, Lorg/slim/preference/dslv/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 717
    iget-object v0, p0, Lorg/slim/preference/dslv/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 722
    iget-object v0, p0, Lorg/slim/preference/dslv/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 702
    iget-object v0, p0, Lorg/slim/preference/dslv/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    return v0
.end method
