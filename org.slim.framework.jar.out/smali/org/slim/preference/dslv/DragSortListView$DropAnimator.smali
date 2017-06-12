.class Lorg/slim/preference/dslv/DragSortListView$DropAnimator;
.super Lorg/slim/preference/dslv/DragSortListView$SmoothAnimator;
.source "DragSortListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/slim/preference/dslv/DragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DropAnimator"
.end annotation


# instance fields
.field private mDropPos:I

.field private mInitDeltaX:F

.field private mInitDeltaY:F

.field private srcPos:I

.field final synthetic this$0:Lorg/slim/preference/dslv/DragSortListView;


# direct methods
.method public constructor <init>(Lorg/slim/preference/dslv/DragSortListView;FI)V
    .locals 0
    .param p1, "this$0"    # Lorg/slim/preference/dslv/DragSortListView;
    .param p2, "smoothness"    # F
    .param p3, "duration"    # I

    .prologue
    .line 1254
    iput-object p1, p0, Lorg/slim/preference/dslv/DragSortListView$DropAnimator;->this$0:Lorg/slim/preference/dslv/DragSortListView;

    .line 1255
    invoke-direct {p0, p1, p2, p3}, Lorg/slim/preference/dslv/DragSortListView$SmoothAnimator;-><init>(Lorg/slim/preference/dslv/DragSortListView;FI)V

    .line 1254
    return-void
.end method

.method private getTargetY()I
    .locals 6

    .prologue
    .line 1268
    iget-object v4, p0, Lorg/slim/preference/dslv/DragSortListView$DropAnimator;->this$0:Lorg/slim/preference/dslv/DragSortListView;

    invoke-virtual {v4}, Lorg/slim/preference/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v0

    .line 1269
    .local v0, "first":I
    iget-object v4, p0, Lorg/slim/preference/dslv/DragSortListView$DropAnimator;->this$0:Lorg/slim/preference/dslv/DragSortListView;

    invoke-static {v4}, Lorg/slim/preference/dslv/DragSortListView;->-get11(Lorg/slim/preference/dslv/DragSortListView;)I

    move-result v4

    iget-object v5, p0, Lorg/slim/preference/dslv/DragSortListView$DropAnimator;->this$0:Lorg/slim/preference/dslv/DragSortListView;

    invoke-virtual {v5}, Lorg/slim/preference/dslv/DragSortListView;->getDividerHeight()I

    move-result v5

    add-int/2addr v4, v5

    div-int/lit8 v1, v4, 0x2

    .line 1270
    .local v1, "otherAdjust":I
    iget-object v4, p0, Lorg/slim/preference/dslv/DragSortListView$DropAnimator;->this$0:Lorg/slim/preference/dslv/DragSortListView;

    iget v5, p0, Lorg/slim/preference/dslv/DragSortListView$DropAnimator;->mDropPos:I

    sub-int/2addr v5, v0

    invoke-virtual {v4, v5}, Lorg/slim/preference/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1271
    .local v3, "v":Landroid/view/View;
    const/4 v2, -0x1

    .line 1272
    .local v2, "targetY":I
    if-eqz v3, :cond_2

    .line 1273
    iget v4, p0, Lorg/slim/preference/dslv/DragSortListView$DropAnimator;->mDropPos:I

    iget v5, p0, Lorg/slim/preference/dslv/DragSortListView$DropAnimator;->srcPos:I

    if-ne v4, v5, :cond_0

    .line 1274
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v2

    .line 1287
    :goto_0
    return v2

    .line 1275
    :cond_0
    iget v4, p0, Lorg/slim/preference/dslv/DragSortListView$DropAnimator;->mDropPos:I

    iget v5, p0, Lorg/slim/preference/dslv/DragSortListView$DropAnimator;->srcPos:I

    if-ge v4, v5, :cond_1

    .line 1277
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int v2, v4, v1

    goto :goto_0

    .line 1280
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v4

    add-int/2addr v4, v1

    iget-object v5, p0, Lorg/slim/preference/dslv/DragSortListView$DropAnimator;->this$0:Lorg/slim/preference/dslv/DragSortListView;

    invoke-static {v5}, Lorg/slim/preference/dslv/DragSortListView;->-get8(Lorg/slim/preference/dslv/DragSortListView;)I

    move-result v5

    sub-int v2, v4, v5

    goto :goto_0

    .line 1284
    :cond_2
    invoke-virtual {p0}, Lorg/slim/preference/dslv/DragSortListView$DropAnimator;->cancel()V

    goto :goto_0
.end method


# virtual methods
.method public onStart()V
    .locals 2

    .prologue
    .line 1260
    iget-object v0, p0, Lorg/slim/preference/dslv/DragSortListView$DropAnimator;->this$0:Lorg/slim/preference/dslv/DragSortListView;

    invoke-static {v0}, Lorg/slim/preference/dslv/DragSortListView;->-get7(Lorg/slim/preference/dslv/DragSortListView;)I

    move-result v0

    iput v0, p0, Lorg/slim/preference/dslv/DragSortListView$DropAnimator;->mDropPos:I

    .line 1261
    iget-object v0, p0, Lorg/slim/preference/dslv/DragSortListView$DropAnimator;->this$0:Lorg/slim/preference/dslv/DragSortListView;

    invoke-static {v0}, Lorg/slim/preference/dslv/DragSortListView;->-get17(Lorg/slim/preference/dslv/DragSortListView;)I

    move-result v0

    iput v0, p0, Lorg/slim/preference/dslv/DragSortListView$DropAnimator;->srcPos:I

    .line 1262
    iget-object v0, p0, Lorg/slim/preference/dslv/DragSortListView$DropAnimator;->this$0:Lorg/slim/preference/dslv/DragSortListView;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lorg/slim/preference/dslv/DragSortListView;->-set2(Lorg/slim/preference/dslv/DragSortListView;I)I

    .line 1263
    iget-object v0, p0, Lorg/slim/preference/dslv/DragSortListView$DropAnimator;->this$0:Lorg/slim/preference/dslv/DragSortListView;

    invoke-static {v0}, Lorg/slim/preference/dslv/DragSortListView;->-get6(Lorg/slim/preference/dslv/DragSortListView;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-direct {p0}, Lorg/slim/preference/dslv/DragSortListView$DropAnimator;->getTargetY()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lorg/slim/preference/dslv/DragSortListView$DropAnimator;->mInitDeltaY:F

    .line 1264
    iget-object v0, p0, Lorg/slim/preference/dslv/DragSortListView$DropAnimator;->this$0:Lorg/slim/preference/dslv/DragSortListView;

    invoke-static {v0}, Lorg/slim/preference/dslv/DragSortListView;->-get6(Lorg/slim/preference/dslv/DragSortListView;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lorg/slim/preference/dslv/DragSortListView$DropAnimator;->this$0:Lorg/slim/preference/dslv/DragSortListView;

    invoke-virtual {v1}, Lorg/slim/preference/dslv/DragSortListView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lorg/slim/preference/dslv/DragSortListView$DropAnimator;->mInitDeltaX:F

    .line 1259
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 1306
    iget-object v0, p0, Lorg/slim/preference/dslv/DragSortListView$DropAnimator;->this$0:Lorg/slim/preference/dslv/DragSortListView;

    invoke-static {v0}, Lorg/slim/preference/dslv/DragSortListView;->-wrap9(Lorg/slim/preference/dslv/DragSortListView;)V

    .line 1305
    return-void
.end method

.method public onUpdate(FF)V
    .locals 8
    .param p1, "frac"    # F
    .param p2, "smoothFrac"    # F

    .prologue
    .line 1292
    invoke-direct {p0}, Lorg/slim/preference/dslv/DragSortListView$DropAnimator;->getTargetY()I

    move-result v4

    .line 1293
    .local v4, "targetY":I
    iget-object v5, p0, Lorg/slim/preference/dslv/DragSortListView$DropAnimator;->this$0:Lorg/slim/preference/dslv/DragSortListView;

    invoke-virtual {v5}, Lorg/slim/preference/dslv/DragSortListView;->getPaddingLeft()I

    move-result v3

    .line 1294
    .local v3, "targetX":I
    iget-object v5, p0, Lorg/slim/preference/dslv/DragSortListView$DropAnimator;->this$0:Lorg/slim/preference/dslv/DragSortListView;

    invoke-static {v5}, Lorg/slim/preference/dslv/DragSortListView;->-get6(Lorg/slim/preference/dslv/DragSortListView;)Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v4

    int-to-float v1, v5

    .line 1295
    .local v1, "deltaY":F
    iget-object v5, p0, Lorg/slim/preference/dslv/DragSortListView$DropAnimator;->this$0:Lorg/slim/preference/dslv/DragSortListView;

    invoke-static {v5}, Lorg/slim/preference/dslv/DragSortListView;->-get6(Lorg/slim/preference/dslv/DragSortListView;)Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->x:I

    sub-int/2addr v5, v3

    int-to-float v0, v5

    .line 1296
    .local v0, "deltaX":F
    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v2, v5, p2

    .line 1297
    .local v2, "f":F
    iget v5, p0, Lorg/slim/preference/dslv/DragSortListView$DropAnimator;->mInitDeltaY:F

    div-float v5, v1, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v2, v5

    if-ltz v5, :cond_0

    iget v5, p0, Lorg/slim/preference/dslv/DragSortListView$DropAnimator;->mInitDeltaX:F

    div-float v5, v0, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v2, v5

    if-gez v5, :cond_1

    .line 1298
    :cond_0
    iget-object v5, p0, Lorg/slim/preference/dslv/DragSortListView$DropAnimator;->this$0:Lorg/slim/preference/dslv/DragSortListView;

    invoke-static {v5}, Lorg/slim/preference/dslv/DragSortListView;->-get6(Lorg/slim/preference/dslv/DragSortListView;)Landroid/graphics/Point;

    move-result-object v5

    iget v6, p0, Lorg/slim/preference/dslv/DragSortListView$DropAnimator;->mInitDeltaY:F

    mul-float/2addr v6, v2

    float-to-int v6, v6

    add-int/2addr v6, v4

    iput v6, v5, Landroid/graphics/Point;->y:I

    .line 1299
    iget-object v5, p0, Lorg/slim/preference/dslv/DragSortListView$DropAnimator;->this$0:Lorg/slim/preference/dslv/DragSortListView;

    invoke-static {v5}, Lorg/slim/preference/dslv/DragSortListView;->-get6(Lorg/slim/preference/dslv/DragSortListView;)Landroid/graphics/Point;

    move-result-object v5

    iget-object v6, p0, Lorg/slim/preference/dslv/DragSortListView$DropAnimator;->this$0:Lorg/slim/preference/dslv/DragSortListView;

    invoke-virtual {v6}, Lorg/slim/preference/dslv/DragSortListView;->getPaddingLeft()I

    move-result v6

    iget v7, p0, Lorg/slim/preference/dslv/DragSortListView$DropAnimator;->mInitDeltaX:F

    mul-float/2addr v7, v2

    float-to-int v7, v7

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Point;->x:I

    .line 1300
    iget-object v5, p0, Lorg/slim/preference/dslv/DragSortListView$DropAnimator;->this$0:Lorg/slim/preference/dslv/DragSortListView;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lorg/slim/preference/dslv/DragSortListView;->-wrap6(Lorg/slim/preference/dslv/DragSortListView;Z)V

    .line 1291
    :cond_1
    return-void
.end method
