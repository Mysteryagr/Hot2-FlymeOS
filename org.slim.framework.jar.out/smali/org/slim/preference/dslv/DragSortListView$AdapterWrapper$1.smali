.class Lorg/slim/preference/dslv/DragSortListView$AdapterWrapper$1;
.super Landroid/database/DataSetObserver;
.source "DragSortListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/slim/preference/dslv/DragSortListView$AdapterWrapper;-><init>(Lorg/slim/preference/dslv/DragSortListView;Landroid/widget/ListAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/slim/preference/dslv/DragSortListView$AdapterWrapper;


# direct methods
.method constructor <init>(Lorg/slim/preference/dslv/DragSortListView$AdapterWrapper;)V
    .locals 0
    .param p1, "this$1"    # Lorg/slim/preference/dslv/DragSortListView$AdapterWrapper;

    .prologue
    .line 665
    iput-object p1, p0, Lorg/slim/preference/dslv/DragSortListView$AdapterWrapper$1;->this$1:Lorg/slim/preference/dslv/DragSortListView$AdapterWrapper;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 667
    iget-object v0, p0, Lorg/slim/preference/dslv/DragSortListView$AdapterWrapper$1;->this$1:Lorg/slim/preference/dslv/DragSortListView$AdapterWrapper;

    invoke-virtual {v0}, Lorg/slim/preference/dslv/DragSortListView$AdapterWrapper;->notifyDataSetChanged()V

    .line 666
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 671
    iget-object v0, p0, Lorg/slim/preference/dslv/DragSortListView$AdapterWrapper$1;->this$1:Lorg/slim/preference/dslv/DragSortListView$AdapterWrapper;

    invoke-virtual {v0}, Lorg/slim/preference/dslv/DragSortListView$AdapterWrapper;->notifyDataSetInvalidated()V

    .line 670
    return-void
.end method
