.class public final Lorg/slim/framework/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/slim/framework/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final DragSortListView:[I

.field public static final SlimSeekBarPreference:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 153
    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/slim/framework/R$styleable;->DragSortListView:[I

    .line 163
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lorg/slim/framework/R$styleable;->SlimSeekBarPreference:[I

    .line 144
    return-void

    .line 153
    nop

    :array_0
    .array-data 4
        0x37010000    # 7.688999E-6f
        0x37010001    # 7.689E-6f
        0x37010002    # 7.689001E-6f
        0x37010003
        0x37010004
        0x37010005
        0x37010006
        0x37010007
        0x37010008
        0x37010009
        0x3701000a
        0x3701000b
        0x3701000c
        0x3701000d    # 7.689011E-6f
        0x3701000e
        0x3701000f
        0x37010010
        0x37010011
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
