.class Lorg/slim/preference/dslv/DragSortListView$1;
.super Ljava/lang/Object;
.source "DragSortListView.java"

# interfaces
.implements Lorg/slim/preference/dslv/DragSortListView$DragScrollProfile;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/slim/preference/dslv/DragSortListView;
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
    .line 273
    iput-object p1, p0, Lorg/slim/preference/dslv/DragSortListView$1;->this$0:Lorg/slim/preference/dslv/DragSortListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpeed(FJ)F
    .locals 1
    .param p1, "w"    # F
    .param p2, "t"    # J

    .prologue
    .line 276
    iget-object v0, p0, Lorg/slim/preference/dslv/DragSortListView$1;->this$0:Lorg/slim/preference/dslv/DragSortListView;

    invoke-static {v0}, Lorg/slim/preference/dslv/DragSortListView;->-get13(Lorg/slim/preference/dslv/DragSortListView;)F

    move-result v0

    mul-float/2addr v0, p1

    return v0
.end method
