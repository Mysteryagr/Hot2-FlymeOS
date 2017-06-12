.class Lorg/slim/preference/dslv/DragSortListView$2;
.super Landroid/database/DataSetObserver;
.source "DragSortListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/slim/preference/dslv/DragSortListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/slim/preference/dslv/DragSortListView;


# direct methods
.method constructor <init>(Lorg/slim/preference/dslv/DragSortListView;)V
    .locals 0
    .param p1, "this$0"    # Lorg/slim/preference/dslv/DragSortListView;

    .prologue
    .line 558
    iput-object p1, p0, Lorg/slim/preference/dslv/DragSortListView$2;->this$0:Lorg/slim/preference/dslv/DragSortListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method private cancel()V
    .locals 2

    .prologue
    .line 560
    iget-object v0, p0, Lorg/slim/preference/dslv/DragSortListView$2;->this$0:Lorg/slim/preference/dslv/DragSortListView;

    invoke-static {v0}, Lorg/slim/preference/dslv/DragSortListView;->-get3(Lorg/slim/preference/dslv/DragSortListView;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 561
    iget-object v0, p0, Lorg/slim/preference/dslv/DragSortListView$2;->this$0:Lorg/slim/preference/dslv/DragSortListView;

    invoke-virtual {v0}, Lorg/slim/preference/dslv/DragSortListView;->cancelDrag()V

    .line 559
    :cond_0
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 0

    .prologue
    .line 567
    invoke-direct {p0}, Lorg/slim/preference/dslv/DragSortListView$2;->cancel()V

    .line 566
    return-void
.end method

.method public onInvalidated()V
    .locals 0

    .prologue
    .line 572
    invoke-direct {p0}, Lorg/slim/preference/dslv/DragSortListView$2;->cancel()V

    .line 571
    return-void
.end method
