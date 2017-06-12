.class public Lorg/slim/preference/dslv/DragSortController;
.super Lorg/slim/preference/dslv/SimpleFloatViewManager;
.source "DragSortController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/slim/preference/dslv/DragSortController$OnItemTouchedCallback;,
        Lorg/slim/preference/dslv/DragSortController$1;
    }
.end annotation


# static fields
.field public static final CLICK_REMOVE:I = 0x0

.field public static final FLING_REMOVE:I = 0x1

.field public static final MISS:I = -0x1

.field public static final ON_DOWN:I = 0x0

.field public static final ON_DRAG:I = 0x1

.field public static final ON_LONG_PRESS:I = 0x2


# instance fields
.field private mCanDrag:Z

.field private mClickRemoveHitPos:I

.field private mClickRemoveId:I

.field private mCurrX:I

.field private mCurrY:I

.field private mDetector:Landroid/view/GestureDetector;

.field private mDragHandleId:I

.field private mDragInitMode:I

.field private mDragging:Z

.field private mDslv:Lorg/slim/preference/dslv/DragSortListView;

.field private mFlingHandleId:I

.field private mFlingHitPos:I

.field private mFlingRemoveDetector:Landroid/view/GestureDetector;

.field private mFlingRemoveListener:Landroid/view/GestureDetector$OnGestureListener;

.field private mFlingSpeed:F

.field private mHitPos:I

.field private mIsRemoving:Z

.field private mItemTouchedCallback:Lorg/slim/preference/dslv/DragSortController$OnItemTouchedCallback;

.field private mItemX:I

.field private mItemY:I

.field private mPositionX:I

.field private mRemoveEnabled:Z

.field private mRemoveMode:I

.field private mSortEnabled:Z

.field private mTempLoc:[I

.field private mTouchSlop:I


# direct methods
.method static synthetic -get0(Lorg/slim/preference/dslv/DragSortController;)Lorg/slim/preference/dslv/DragSortListView;
    .locals 1

    iget-object v0, p0, Lorg/slim/preference/dslv/DragSortController;->mDslv:Lorg/slim/preference/dslv/DragSortListView;

    return-object v0
.end method

.method static synthetic -get1(Lorg/slim/preference/dslv/DragSortController;)F
    .locals 1

    iget v0, p0, Lorg/slim/preference/dslv/DragSortController;->mFlingSpeed:F

    return v0
.end method

.method static synthetic -get2(Lorg/slim/preference/dslv/DragSortController;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/slim/preference/dslv/DragSortController;->mIsRemoving:Z

    return v0
.end method

.method static synthetic -get3(Lorg/slim/preference/dslv/DragSortController;)I
    .locals 1

    iget v0, p0, Lorg/slim/preference/dslv/DragSortController;->mPositionX:I

    return v0
.end method

.method static synthetic -get4(Lorg/slim/preference/dslv/DragSortController;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/slim/preference/dslv/DragSortController;->mRemoveEnabled:Z

    return v0
.end method

.method static synthetic -set0(Lorg/slim/preference/dslv/DragSortController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/slim/preference/dslv/DragSortController;->mIsRemoving:Z

    return p1
.end method

.method public constructor <init>(Lorg/slim/preference/dslv/DragSortListView;)V
    .locals 2
    .param p1, "dslv"    # Lorg/slim/preference/dslv/DragSortListView;

    .prologue
    const/4 v1, 0x0

    .line 120
    const/4 v0, 0x1

    invoke-direct {p0, p1, v1, v1, v0}, Lorg/slim/preference/dslv/DragSortController;-><init>(Lorg/slim/preference/dslv/DragSortListView;III)V

    .line 119
    return-void
.end method

.method public constructor <init>(Lorg/slim/preference/dslv/DragSortListView;III)V
    .locals 6
    .param p1, "dslv"    # Lorg/slim/preference/dslv/DragSortListView;
    .param p2, "dragHandleId"    # I
    .param p3, "dragInitMode"    # I
    .param p4, "removeMode"    # I

    .prologue
    .line 125
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/slim/preference/dslv/DragSortController;-><init>(Lorg/slim/preference/dslv/DragSortListView;IIII)V

    .line 124
    return-void
.end method

.method public constructor <init>(Lorg/slim/preference/dslv/DragSortListView;IIII)V
    .locals 7
    .param p1, "dslv"    # Lorg/slim/preference/dslv/DragSortListView;
    .param p2, "dragHandleId"    # I
    .param p3, "dragInitMode"    # I
    .param p4, "removeMode"    # I
    .param p5, "clickRemoveId"    # I

    .prologue
    .line 130
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/slim/preference/dslv/DragSortController;-><init>(Lorg/slim/preference/dslv/DragSortListView;IIIII)V

    .line 129
    return-void
.end method

.method public constructor <init>(Lorg/slim/preference/dslv/DragSortListView;IIIII)V
    .locals 4
    .param p1, "dslv"    # Lorg/slim/preference/dslv/DragSortListView;
    .param p2, "dragHandleId"    # I
    .param p3, "dragInitMode"    # I
    .param p4, "removeMode"    # I
    .param p5, "clickRemoveId"    # I
    .param p6, "flingHandleId"    # I

    .prologue
    const/4 v1, -0x1

    const/4 v3, 0x0

    .line 142
    invoke-direct {p0, p1}, Lorg/slim/preference/dslv/SimpleFloatViewManager;-><init>(Landroid/widget/ListView;)V

    .line 50
    iput v3, p0, Lorg/slim/preference/dslv/DragSortController;->mDragInitMode:I

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/slim/preference/dslv/DragSortController;->mSortEnabled:Z

    .line 65
    iput-boolean v3, p0, Lorg/slim/preference/dslv/DragSortController;->mRemoveEnabled:Z

    .line 66
    iput-boolean v3, p0, Lorg/slim/preference/dslv/DragSortController;->mIsRemoving:Z

    .line 76
    iput v1, p0, Lorg/slim/preference/dslv/DragSortController;->mHitPos:I

    .line 77
    iput v1, p0, Lorg/slim/preference/dslv/DragSortController;->mFlingHitPos:I

    .line 79
    iput v1, p0, Lorg/slim/preference/dslv/DragSortController;->mClickRemoveHitPos:I

    .line 81
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/slim/preference/dslv/DragSortController;->mTempLoc:[I

    .line 89
    iput-boolean v3, p0, Lorg/slim/preference/dslv/DragSortController;->mDragging:Z

    .line 91
    const/high16 v0, 0x43fa0000    # 500.0f

    iput v0, p0, Lorg/slim/preference/dslv/DragSortController;->mFlingSpeed:F

    .line 533
    new-instance v0, Lorg/slim/preference/dslv/DragSortController$1;

    invoke-direct {v0, p0}, Lorg/slim/preference/dslv/DragSortController$1;-><init>(Lorg/slim/preference/dslv/DragSortController;)V

    .line 532
    iput-object v0, p0, Lorg/slim/preference/dslv/DragSortController;->mFlingRemoveListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 143
    iput-object p1, p0, Lorg/slim/preference/dslv/DragSortController;->mDslv:Lorg/slim/preference/dslv/DragSortListView;

    .line 144
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Lorg/slim/preference/dslv/DragSortListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lorg/slim/preference/dslv/DragSortController;->mDetector:Landroid/view/GestureDetector;

    .line 145
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Lorg/slim/preference/dslv/DragSortListView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/slim/preference/dslv/DragSortController;->mFlingRemoveListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lorg/slim/preference/dslv/DragSortController;->mFlingRemoveDetector:Landroid/view/GestureDetector;

    .line 146
    iget-object v0, p0, Lorg/slim/preference/dslv/DragSortController;->mFlingRemoveDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, v3}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 147
    invoke-virtual {p1}, Lorg/slim/preference/dslv/DragSortListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lorg/slim/preference/dslv/DragSortController;->mTouchSlop:I

    .line 148
    iput p2, p0, Lorg/slim/preference/dslv/DragSortController;->mDragHandleId:I

    .line 149
    iput p5, p0, Lorg/slim/preference/dslv/DragSortController;->mClickRemoveId:I

    .line 150
    iput p6, p0, Lorg/slim/preference/dslv/DragSortController;->mFlingHandleId:I

    .line 151
    invoke-virtual {p0, p4}, Lorg/slim/preference/dslv/DragSortController;->setRemoveMode(I)V

    .line 152
    invoke-virtual {p0, p3}, Lorg/slim/preference/dslv/DragSortController;->setDragInitMode(I)V

    .line 141
    return-void
.end method

.method private getTouchPos(Landroid/view/MotionEvent;)I
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 376
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    .line 377
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    .line 379
    .local v1, "y":I
    iget-object v2, p0, Lorg/slim/preference/dslv/DragSortController;->mDslv:Lorg/slim/preference/dslv/DragSortListView;

    invoke-virtual {v2, v0, v1}, Lorg/slim/preference/dslv/DragSortListView;->pointToPosition(II)I

    move-result v2

    return v2
.end method

.method private getViewForEvent(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 383
    invoke-direct {p0, p1}, Lorg/slim/preference/dslv/DragSortController;->getTouchPos(Landroid/view/MotionEvent;)I

    move-result v0

    .line 385
    .local v0, "touchPos":I
    invoke-virtual {p0, p1}, Lorg/slim/preference/dslv/DragSortController;->wasItemClicked(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 386
    iget-object v1, p0, Lorg/slim/preference/dslv/DragSortController;->mDslv:Lorg/slim/preference/dslv/DragSortListView;

    iget-object v2, p0, Lorg/slim/preference/dslv/DragSortController;->mDslv:Lorg/slim/preference/dslv/DragSortListView;

    invoke-virtual {v2}, Lorg/slim/preference/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, v0, v2

    invoke-virtual {v1, v2}, Lorg/slim/preference/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 385
    :goto_0
    return-object v1

    .line 386
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dragHandleHitPosition(Landroid/view/MotionEvent;)I
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 368
    iget v0, p0, Lorg/slim/preference/dslv/DragSortController;->mDragHandleId:I

    invoke-virtual {p0, p1, v0}, Lorg/slim/preference/dslv/DragSortController;->viewIdHitPosition(Landroid/view/MotionEvent;I)I

    move-result v0

    return v0
.end method

.method public flingHandleHitPosition(Landroid/view/MotionEvent;)I
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 372
    iget v0, p0, Lorg/slim/preference/dslv/DragSortController;->mFlingHandleId:I

    invoke-virtual {p0, p1, v0}, Lorg/slim/preference/dslv/DragSortController;->viewIdHitPosition(Landroid/view/MotionEvent;I)I

    move-result v0

    return v0
.end method

.method public getDragInitMode()I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lorg/slim/preference/dslv/DragSortController;->mDragInitMode:I

    return v0
.end method

.method public getRemoveMode()I
    .locals 1

    .prologue
    .line 198
    iget v0, p0, Lorg/slim/preference/dslv/DragSortController;->mRemoveMode:I

    return v0
.end method

.method public isRemoveEnabled()Z
    .locals 1

    .prologue
    .line 209
    iget-boolean v0, p0, Lorg/slim/preference/dslv/DragSortController;->mRemoveEnabled:Z

    return v0
.end method

.method public isSortEnabled()Z
    .locals 1

    .prologue
    .line 185
    iget-boolean v0, p0, Lorg/slim/preference/dslv/DragSortController;->mSortEnabled:Z

    return v0
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 305
    iget-object v2, p0, Lorg/slim/preference/dslv/DragSortController;->mItemTouchedCallback:Lorg/slim/preference/dslv/DragSortController$OnItemTouchedCallback;

    if-eqz v2, :cond_0

    .line 306
    invoke-direct {p0, p1}, Lorg/slim/preference/dslv/DragSortController;->getViewForEvent(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v1

    .line 307
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 308
    iget-object v2, p0, Lorg/slim/preference/dslv/DragSortController;->mDslv:Lorg/slim/preference/dslv/DragSortListView;

    invoke-virtual {v2, v1}, Lorg/slim/preference/dslv/DragSortListView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    .line 309
    .local v0, "position":I
    iget-object v2, p0, Lorg/slim/preference/dslv/DragSortController;->mItemTouchedCallback:Lorg/slim/preference/dslv/DragSortController$OnItemTouchedCallback;

    invoke-interface {v2, v0}, Lorg/slim/preference/dslv/DragSortController$OnItemTouchedCallback;->onDoubleTap(I)Z

    .line 312
    .end local v0    # "position":I
    .end local v1    # "v":Landroid/view/View;
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 317
    const/4 v0, 0x0

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 433
    iget-boolean v0, p0, Lorg/slim/preference/dslv/DragSortController;->mRemoveEnabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/slim/preference/dslv/DragSortController;->mRemoveMode:I

    if-nez v0, :cond_0

    .line 434
    iget v0, p0, Lorg/slim/preference/dslv/DragSortController;->mClickRemoveId:I

    invoke-virtual {p0, p1, v0}, Lorg/slim/preference/dslv/DragSortController;->viewIdHitPosition(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lorg/slim/preference/dslv/DragSortController;->mClickRemoveHitPos:I

    .line 437
    :cond_0
    invoke-virtual {p0, p1}, Lorg/slim/preference/dslv/DragSortController;->startDragPosition(Landroid/view/MotionEvent;)I

    move-result v0

    iput v0, p0, Lorg/slim/preference/dslv/DragSortController;->mHitPos:I

    .line 438
    iget v0, p0, Lorg/slim/preference/dslv/DragSortController;->mHitPos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lorg/slim/preference/dslv/DragSortController;->mDragInitMode:I

    if-nez v0, :cond_1

    .line 439
    iget v0, p0, Lorg/slim/preference/dslv/DragSortController;->mHitPos:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lorg/slim/preference/dslv/DragSortController;->mItemX:I

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iget v3, p0, Lorg/slim/preference/dslv/DragSortController;->mItemY:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lorg/slim/preference/dslv/DragSortController;->startDrag(III)Z

    .line 442
    :cond_1
    iput-boolean v4, p0, Lorg/slim/preference/dslv/DragSortController;->mIsRemoving:Z

    .line 443
    iput-boolean v5, p0, Lorg/slim/preference/dslv/DragSortController;->mCanDrag:Z

    .line 444
    iput v4, p0, Lorg/slim/preference/dslv/DragSortController;->mPositionX:I

    .line 445
    invoke-virtual {p0, p1}, Lorg/slim/preference/dslv/DragSortController;->startFlingPosition(Landroid/view/MotionEvent;)I

    move-result v0

    iput v0, p0, Lorg/slim/preference/dslv/DragSortController;->mFlingHitPos:I

    .line 447
    return v5
.end method

.method public onDragFloatView(Landroid/view/View;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 1
    .param p1, "floatView"    # Landroid/view/View;
    .param p2, "position"    # Landroid/graphics/Point;
    .param p3, "touch"    # Landroid/graphics/Point;

    .prologue
    .line 331
    iget-boolean v0, p0, Lorg/slim/preference/dslv/DragSortController;->mRemoveEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/slim/preference/dslv/DragSortController;->mIsRemoving:Z

    if-eqz v0, :cond_0

    .line 332
    iget v0, p2, Landroid/graphics/Point;->x:I

    iput v0, p0, Lorg/slim/preference/dslv/DragSortController;->mPositionX:I

    .line 329
    :cond_0
    return-void
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 504
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 486
    iget v2, p0, Lorg/slim/preference/dslv/DragSortController;->mHitPos:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    iget v2, p0, Lorg/slim/preference/dslv/DragSortController;->mDragInitMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 487
    iget-object v2, p0, Lorg/slim/preference/dslv/DragSortController;->mDslv:Lorg/slim/preference/dslv/DragSortListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/slim/preference/dslv/DragSortListView;->performHapticFeedback(I)Z

    .line 488
    iget v2, p0, Lorg/slim/preference/dslv/DragSortController;->mHitPos:I

    iget v3, p0, Lorg/slim/preference/dslv/DragSortController;->mCurrX:I

    iget v4, p0, Lorg/slim/preference/dslv/DragSortController;->mItemX:I

    sub-int/2addr v3, v4

    iget v4, p0, Lorg/slim/preference/dslv/DragSortController;->mCurrY:I

    iget v5, p0, Lorg/slim/preference/dslv/DragSortController;->mItemY:I

    sub-int/2addr v4, v5

    invoke-virtual {p0, v2, v3, v4}, Lorg/slim/preference/dslv/DragSortController;->startDrag(III)Z

    .line 484
    :cond_0
    :goto_0
    return-void

    .line 490
    :cond_1
    iget-object v2, p0, Lorg/slim/preference/dslv/DragSortController;->mItemTouchedCallback:Lorg/slim/preference/dslv/DragSortController$OnItemTouchedCallback;

    if-eqz v2, :cond_0

    .line 491
    invoke-direct {p0, p1}, Lorg/slim/preference/dslv/DragSortController;->getViewForEvent(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v1

    .line 492
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 493
    iget-object v2, p0, Lorg/slim/preference/dslv/DragSortController;->mDslv:Lorg/slim/preference/dslv/DragSortListView;

    invoke-virtual {v2, v1}, Lorg/slim/preference/dslv/DragSortListView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    .line 494
    .local v0, "position":I
    iget-object v2, p0, Lorg/slim/preference/dslv/DragSortController;->mItemTouchedCallback:Lorg/slim/preference/dslv/DragSortController$OnItemTouchedCallback;

    invoke-interface {v2, v0}, Lorg/slim/preference/dslv/DragSortController$OnItemTouchedCallback;->onLongClick(I)Z

    goto :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 10
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 453
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v2, v6

    .line 454
    .local v2, "x1":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v4, v6

    .line 455
    .local v4, "y1":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v3, v6

    .line 456
    .local v3, "x2":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v5, v6

    .line 457
    .local v5, "y2":I
    iget v6, p0, Lorg/slim/preference/dslv/DragSortController;->mItemX:I

    sub-int v0, v3, v6

    .line 458
    .local v0, "deltaX":I
    iget v6, p0, Lorg/slim/preference/dslv/DragSortController;->mItemY:I

    sub-int v1, v5, v6

    .line 460
    .local v1, "deltaY":I
    iget-boolean v6, p0, Lorg/slim/preference/dslv/DragSortController;->mCanDrag:Z

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lorg/slim/preference/dslv/DragSortController;->mDragging:Z

    if-eqz v6, :cond_1

    .line 480
    :cond_0
    :goto_0
    return v8

    .line 460
    :cond_1
    iget v6, p0, Lorg/slim/preference/dslv/DragSortController;->mHitPos:I

    if-ne v6, v7, :cond_2

    iget v6, p0, Lorg/slim/preference/dslv/DragSortController;->mFlingHitPos:I

    if-eq v6, v7, :cond_0

    .line 461
    :cond_2
    iget v6, p0, Lorg/slim/preference/dslv/DragSortController;->mHitPos:I

    if-eq v6, v7, :cond_4

    .line 462
    iget v6, p0, Lorg/slim/preference/dslv/DragSortController;->mDragInitMode:I

    if-ne v6, v9, :cond_3

    sub-int v6, v5, v4

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget v7, p0, Lorg/slim/preference/dslv/DragSortController;->mTouchSlop:I

    if-le v6, v7, :cond_3

    iget-boolean v6, p0, Lorg/slim/preference/dslv/DragSortController;->mSortEnabled:Z

    if-eqz v6, :cond_3

    .line 463
    iget v6, p0, Lorg/slim/preference/dslv/DragSortController;->mHitPos:I

    invoke-virtual {p0, v6, v0, v1}, Lorg/slim/preference/dslv/DragSortController;->startDrag(III)Z

    goto :goto_0

    .line 464
    :cond_3
    iget v6, p0, Lorg/slim/preference/dslv/DragSortController;->mDragInitMode:I

    if-eqz v6, :cond_0

    .line 465
    sub-int v6, v3, v2

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget v7, p0, Lorg/slim/preference/dslv/DragSortController;->mTouchSlop:I

    if-le v6, v7, :cond_0

    iget-boolean v6, p0, Lorg/slim/preference/dslv/DragSortController;->mRemoveEnabled:Z

    .line 464
    if-eqz v6, :cond_0

    .line 466
    iput-boolean v9, p0, Lorg/slim/preference/dslv/DragSortController;->mIsRemoving:Z

    .line 467
    iget v6, p0, Lorg/slim/preference/dslv/DragSortController;->mFlingHitPos:I

    invoke-virtual {p0, v6, v0, v1}, Lorg/slim/preference/dslv/DragSortController;->startDrag(III)Z

    goto :goto_0

    .line 469
    :cond_4
    iget v6, p0, Lorg/slim/preference/dslv/DragSortController;->mFlingHitPos:I

    if-eq v6, v7, :cond_0

    .line 470
    sub-int v6, v3, v2

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget v7, p0, Lorg/slim/preference/dslv/DragSortController;->mTouchSlop:I

    if-le v6, v7, :cond_5

    iget-boolean v6, p0, Lorg/slim/preference/dslv/DragSortController;->mRemoveEnabled:Z

    if-eqz v6, :cond_5

    .line 471
    iput-boolean v9, p0, Lorg/slim/preference/dslv/DragSortController;->mIsRemoving:Z

    .line 472
    iget v6, p0, Lorg/slim/preference/dslv/DragSortController;->mFlingHitPos:I

    invoke-virtual {p0, v6, v0, v1}, Lorg/slim/preference/dslv/DragSortController;->startDrag(III)Z

    goto :goto_0

    .line 473
    :cond_5
    sub-int v6, v5, v4

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget v7, p0, Lorg/slim/preference/dslv/DragSortController;->mTouchSlop:I

    if-le v6, v7, :cond_0

    .line 474
    iput-boolean v8, p0, Lorg/slim/preference/dslv/DragSortController;->mCanDrag:Z

    goto :goto_0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 528
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 510
    iget-boolean v2, p0, Lorg/slim/preference/dslv/DragSortController;->mRemoveEnabled:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lorg/slim/preference/dslv/DragSortController;->mRemoveMode:I

    if-nez v2, :cond_1

    .line 511
    iget v2, p0, Lorg/slim/preference/dslv/DragSortController;->mClickRemoveHitPos:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 512
    iget-object v2, p0, Lorg/slim/preference/dslv/DragSortController;->mDslv:Lorg/slim/preference/dslv/DragSortListView;

    iget v3, p0, Lorg/slim/preference/dslv/DragSortController;->mClickRemoveHitPos:I

    iget-object v4, p0, Lorg/slim/preference/dslv/DragSortController;->mDslv:Lorg/slim/preference/dslv/DragSortListView;

    invoke-virtual {v4}, Lorg/slim/preference/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lorg/slim/preference/dslv/DragSortListView;->removeItem(I)V

    .line 523
    :cond_0
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 515
    :cond_1
    iget-object v2, p0, Lorg/slim/preference/dslv/DragSortController;->mItemTouchedCallback:Lorg/slim/preference/dslv/DragSortController$OnItemTouchedCallback;

    if-eqz v2, :cond_0

    .line 516
    invoke-direct {p0, p1}, Lorg/slim/preference/dslv/DragSortController;->getViewForEvent(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v1

    .line 517
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 518
    iget-object v2, p0, Lorg/slim/preference/dslv/DragSortController;->mDslv:Lorg/slim/preference/dslv/DragSortListView;

    invoke-virtual {v2, v1}, Lorg/slim/preference/dslv/DragSortListView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    .line 519
    .local v0, "position":I
    iget-object v2, p0, Lorg/slim/preference/dslv/DragSortController;->mItemTouchedCallback:Lorg/slim/preference/dslv/DragSortController$OnItemTouchedCallback;

    invoke-interface {v2, v0}, Lorg/slim/preference/dslv/DragSortController$OnItemTouchedCallback;->onSingleClick(I)Z

    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 322
    const/4 v0, 0x0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 271
    iget-object v3, p0, Lorg/slim/preference/dslv/DragSortController;->mDslv:Lorg/slim/preference/dslv/DragSortListView;

    invoke-virtual {v3}, Lorg/slim/preference/dslv/DragSortListView;->isDragEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/slim/preference/dslv/DragSortController;->mDslv:Lorg/slim/preference/dslv/DragSortListView;

    invoke-virtual {v3}, Lorg/slim/preference/dslv/DragSortListView;->listViewIntercepted()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 272
    :cond_0
    return v5

    .line 275
    :cond_1
    iget-object v3, p0, Lorg/slim/preference/dslv/DragSortController;->mDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 276
    iget-boolean v3, p0, Lorg/slim/preference/dslv/DragSortController;->mRemoveEnabled:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lorg/slim/preference/dslv/DragSortController;->mDragging:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lorg/slim/preference/dslv/DragSortController;->mRemoveMode:I

    if-ne v3, v6, :cond_2

    .line 277
    iget-object v3, p0, Lorg/slim/preference/dslv/DragSortController;->mFlingRemoveDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 280
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v0, v3, 0xff

    .line 281
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 300
    :goto_0
    :pswitch_0
    return v5

    .line 283
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lorg/slim/preference/dslv/DragSortController;->mCurrX:I

    .line 284
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lorg/slim/preference/dslv/DragSortController;->mCurrY:I

    goto :goto_0

    .line 287
    :pswitch_2
    iget-boolean v3, p0, Lorg/slim/preference/dslv/DragSortController;->mRemoveEnabled:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lorg/slim/preference/dslv/DragSortController;->mIsRemoving:Z

    if-eqz v3, :cond_3

    .line 288
    iget v3, p0, Lorg/slim/preference/dslv/DragSortController;->mPositionX:I

    if-ltz v3, :cond_4

    iget v2, p0, Lorg/slim/preference/dslv/DragSortController;->mPositionX:I

    .line 289
    .local v2, "x":I
    :goto_1
    iget-object v3, p0, Lorg/slim/preference/dslv/DragSortController;->mDslv:Lorg/slim/preference/dslv/DragSortListView;

    invoke-virtual {v3}, Lorg/slim/preference/dslv/DragSortListView;->getWidth()I

    move-result v3

    div-int/lit8 v1, v3, 0x2

    .line 290
    .local v1, "removePoint":I
    if-le v2, v1, :cond_3

    .line 291
    iget-object v3, p0, Lorg/slim/preference/dslv/DragSortController;->mDslv:Lorg/slim/preference/dslv/DragSortListView;

    const/4 v4, 0x0

    invoke-virtual {v3, v6, v4}, Lorg/slim/preference/dslv/DragSortListView;->stopDragWithVelocity(ZF)Z

    .line 295
    .end local v1    # "removePoint":I
    .end local v2    # "x":I
    :cond_3
    :pswitch_3
    iput-boolean v5, p0, Lorg/slim/preference/dslv/DragSortController;->mIsRemoving:Z

    .line 296
    iput-boolean v5, p0, Lorg/slim/preference/dslv/DragSortController;->mDragging:Z

    goto :goto_0

    .line 288
    :cond_4
    iget v3, p0, Lorg/slim/preference/dslv/DragSortController;->mPositionX:I

    neg-int v2, v3

    .restart local v2    # "x":I
    goto :goto_1

    .line 281
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public setClickRemoveId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 239
    iput p1, p0, Lorg/slim/preference/dslv/DragSortController;->mClickRemoveId:I

    .line 238
    return-void
.end method

.method public setDragHandleId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 219
    iput p1, p0, Lorg/slim/preference/dslv/DragSortController;->mDragHandleId:I

    .line 218
    return-void
.end method

.method public setDragInitMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 170
    iput p1, p0, Lorg/slim/preference/dslv/DragSortController;->mDragInitMode:I

    .line 169
    return-void
.end method

.method public setFlingHandleId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 229
    iput p1, p0, Lorg/slim/preference/dslv/DragSortController;->mFlingHandleId:I

    .line 228
    return-void
.end method

.method public setOnItemTouchedCallback(Lorg/slim/preference/dslv/DragSortController$OnItemTouchedCallback;)V
    .locals 0
    .param p1, "callback"    # Lorg/slim/preference/dslv/DragSortController$OnItemTouchedCallback;

    .prologue
    .line 156
    iput-object p1, p0, Lorg/slim/preference/dslv/DragSortController;->mItemTouchedCallback:Lorg/slim/preference/dslv/DragSortController$OnItemTouchedCallback;

    .line 155
    return-void
.end method

.method public setRemoveEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 205
    iput-boolean p1, p0, Lorg/slim/preference/dslv/DragSortController;->mRemoveEnabled:Z

    .line 204
    return-void
.end method

.method public setRemoveMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 194
    iput p1, p0, Lorg/slim/preference/dslv/DragSortController;->mRemoveMode:I

    .line 193
    return-void
.end method

.method public setSortEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 181
    iput-boolean p1, p0, Lorg/slim/preference/dslv/DragSortController;->mSortEnabled:Z

    .line 180
    return-void
.end method

.method public startDrag(III)Z
    .locals 3
    .param p1, "position"    # I
    .param p2, "deltaX"    # I
    .param p3, "deltaY"    # I

    .prologue
    .line 255
    const/4 v0, 0x0

    .line 256
    .local v0, "dragFlags":I
    iget-boolean v1, p0, Lorg/slim/preference/dslv/DragSortController;->mSortEnabled:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lorg/slim/preference/dslv/DragSortController;->mIsRemoving:Z

    if-eqz v1, :cond_2

    .line 259
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lorg/slim/preference/dslv/DragSortController;->mRemoveEnabled:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lorg/slim/preference/dslv/DragSortController;->mIsRemoving:Z

    if-eqz v1, :cond_1

    .line 260
    or-int/lit8 v0, v0, 0x1

    .line 261
    or-int/lit8 v0, v0, 0x2

    .line 264
    :cond_1
    iget-object v1, p0, Lorg/slim/preference/dslv/DragSortController;->mDslv:Lorg/slim/preference/dslv/DragSortListView;

    iget-object v2, p0, Lorg/slim/preference/dslv/DragSortController;->mDslv:Lorg/slim/preference/dslv/DragSortListView;

    invoke-virtual {v2}, Lorg/slim/preference/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {v1, v2, v0, p2, p3}, Lorg/slim/preference/dslv/DragSortListView;->startDrag(IIII)Z

    move-result v1

    iput-boolean v1, p0, Lorg/slim/preference/dslv/DragSortController;->mDragging:Z

    .line 266
    iget-boolean v1, p0, Lorg/slim/preference/dslv/DragSortController;->mDragging:Z

    return v1

    .line 257
    :cond_2
    const/16 v0, 0xc

    goto :goto_0
.end method

.method public startDragPosition(Landroid/view/MotionEvent;)I
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 350
    invoke-virtual {p0, p1}, Lorg/slim/preference/dslv/DragSortController;->dragHandleHitPosition(Landroid/view/MotionEvent;)I

    move-result v0

    return v0
.end method

.method public startFlingPosition(Landroid/view/MotionEvent;)I
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 354
    iget v0, p0, Lorg/slim/preference/dslv/DragSortController;->mRemoveMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lorg/slim/preference/dslv/DragSortController;->flingHandleHitPosition(Landroid/view/MotionEvent;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public viewIdHitPosition(Landroid/view/MotionEvent;I)I
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "id"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 407
    invoke-virtual {p0, p1}, Lorg/slim/preference/dslv/DragSortController;->wasItemClicked(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 408
    invoke-direct {p0, p1}, Lorg/slim/preference/dslv/DragSortController;->getViewForEvent(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v1

    .line 409
    .local v1, "item":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    float-to-int v2, v4

    .line 410
    .local v2, "rawX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    float-to-int v3, v4

    .line 412
    .local v3, "rawY":I
    if-nez p2, :cond_0

    move-object v0, v1

    .line 413
    .local v0, "dragBox":Landroid/view/View;
    :goto_0
    if-eqz v0, :cond_1

    .line 414
    iget-object v4, p0, Lorg/slim/preference/dslv/DragSortController;->mTempLoc:[I

    invoke-virtual {v0, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 416
    iget-object v4, p0, Lorg/slim/preference/dslv/DragSortController;->mTempLoc:[I

    aget v4, v4, v5

    if-le v2, v4, :cond_1

    iget-object v4, p0, Lorg/slim/preference/dslv/DragSortController;->mTempLoc:[I

    aget v4, v4, v6

    if-le v3, v4, :cond_1

    .line 417
    iget-object v4, p0, Lorg/slim/preference/dslv/DragSortController;->mTempLoc:[I

    aget v4, v4, v5

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    if-ge v2, v4, :cond_1

    .line 418
    iget-object v4, p0, Lorg/slim/preference/dslv/DragSortController;->mTempLoc:[I

    aget v4, v4, v6

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_1

    .line 420
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    iput v4, p0, Lorg/slim/preference/dslv/DragSortController;->mItemX:I

    .line 421
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    iput v4, p0, Lorg/slim/preference/dslv/DragSortController;->mItemY:I

    .line 423
    invoke-direct {p0, p1}, Lorg/slim/preference/dslv/DragSortController;->getTouchPos(Landroid/view/MotionEvent;)I

    move-result v4

    return v4

    .line 412
    .end local v0    # "dragBox":Landroid/view/View;
    :cond_0
    invoke-virtual {v1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .restart local v0    # "dragBox":Landroid/view/View;
    goto :goto_0

    .line 428
    .end local v0    # "dragBox":Landroid/view/View;
    .end local v1    # "item":Landroid/view/View;
    .end local v2    # "rawX":I
    .end local v3    # "rawY":I
    :cond_1
    const/4 v4, -0x1

    return v4
.end method

.method public wasItemClicked(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    .line 390
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v4, v7

    .line 391
    .local v4, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v5, v7

    .line 393
    .local v5, "y":I
    iget-object v7, p0, Lorg/slim/preference/dslv/DragSortController;->mDslv:Lorg/slim/preference/dslv/DragSortListView;

    invoke-virtual {v7, v4, v5}, Lorg/slim/preference/dslv/DragSortListView;->pointToPosition(II)I

    move-result v3

    .line 395
    .local v3, "touchPos":I
    iget-object v7, p0, Lorg/slim/preference/dslv/DragSortController;->mDslv:Lorg/slim/preference/dslv/DragSortListView;

    invoke-virtual {v7}, Lorg/slim/preference/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v2

    .line 396
    .local v2, "numHeaders":I
    iget-object v7, p0, Lorg/slim/preference/dslv/DragSortController;->mDslv:Lorg/slim/preference/dslv/DragSortListView;

    invoke-virtual {v7}, Lorg/slim/preference/dslv/DragSortListView;->getFooterViewsCount()I

    move-result v1

    .line 397
    .local v1, "numFooters":I
    iget-object v7, p0, Lorg/slim/preference/dslv/DragSortController;->mDslv:Lorg/slim/preference/dslv/DragSortListView;

    invoke-virtual {v7}, Lorg/slim/preference/dslv/DragSortListView;->getCount()I

    move-result v0

    .line 399
    .local v0, "count":I
    const/4 v7, -0x1

    if-eq v3, v7, :cond_0

    if-lt v3, v2, :cond_0

    .line 400
    sub-int v7, v0, v1

    if-ge v3, v7, :cond_0

    const/4 v6, 0x1

    .line 399
    :cond_0
    return v6
.end method
