.class public Lorg/slim/utils/AttributeHelper;
.super Ljava/lang/Object;
.source "AttributeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/slim/utils/AttributeHelper$AttributeInfo;
    }
.end annotation


# instance fields
.field mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/slim/utils/AttributeHelper$AttributeInfo;",
            ">;"
        }
    .end annotation
.end field

.field mMetrics:Landroid/util/DisplayMetrics;

.field mResources:Landroid/content/res/Resources;

.field private mStyleRes:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;[I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "styleRes"    # [I

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/slim/utils/AttributeHelper;->mMap:Ljava/util/Map;

    .line 52
    invoke-direct {p0, p2}, Lorg/slim/utils/AttributeHelper;->loadMap(Landroid/util/AttributeSet;)V

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lorg/slim/utils/AttributeHelper;->mResources:Landroid/content/res/Resources;

    .line 54
    iget-object v0, p0, Lorg/slim/utils/AttributeHelper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lorg/slim/utils/AttributeHelper;->mMetrics:Landroid/util/DisplayMetrics;

    .line 56
    iput-object p3, p0, Lorg/slim/utils/AttributeHelper;->mStyleRes:[I

    .line 51
    return-void
.end method

.method private getIdForIndex(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 60
    iget-object v0, p0, Lorg/slim/utils/AttributeHelper;->mStyleRes:[I

    aget v0, v0, p1

    return v0
.end method

.method private loadMap(Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 135
    invoke-interface {p1}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v0

    .line 136
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 137
    invoke-interface {p1, v1}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    .line 138
    .local v2, "name":Ljava/lang/String;
    invoke-interface {p1, v1}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    .line 139
    .local v4, "value":Ljava/lang/String;
    invoke-interface {p1, v1}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v3

    .line 140
    .local v3, "resId":I
    iget-object v5, p0, Lorg/slim/utils/AttributeHelper;->mMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Lorg/slim/utils/AttributeHelper$AttributeInfo;

    invoke-direct {v7, p0, v3, v2, v4}, Lorg/slim/utils/AttributeHelper$AttributeInfo;-><init>(Lorg/slim/utils/AttributeHelper;ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 134
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "resId":I
    .end local v4    # "value":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public getBoolean(IZ)Z
    .locals 3
    .param p1, "index"    # I
    .param p2, "defValue"    # Z

    .prologue
    .line 64
    iget-object v1, p0, Lorg/slim/utils/AttributeHelper;->mMap:Ljava/util/Map;

    invoke-direct {p0, p1}, Lorg/slim/utils/AttributeHelper;->getIdForIndex(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/slim/utils/AttributeHelper$AttributeInfo;

    .line 65
    .local v0, "info":Lorg/slim/utils/AttributeHelper$AttributeInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lorg/slim/utils/AttributeHelper$AttributeInfo;->value:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    return p2

    .line 66
    :cond_1
    iget-object v1, v0, Lorg/slim/utils/AttributeHelper$AttributeInfo;->value:Ljava/lang/String;

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 67
    const/4 v1, 0x1

    return v1

    .line 68
    :cond_2
    iget-object v1, v0, Lorg/slim/utils/AttributeHelper$AttributeInfo;->value:Ljava/lang/String;

    const-string/jumbo v2, "false"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 69
    const/4 v1, 0x0

    return v1

    .line 71
    :cond_3
    return p2
.end method

.method public getColor(II)I
    .locals 5
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .prologue
    .line 76
    iget-object v3, p0, Lorg/slim/utils/AttributeHelper;->mMap:Ljava/util/Map;

    invoke-direct {p0, p1}, Lorg/slim/utils/AttributeHelper;->getIdForIndex(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/slim/utils/AttributeHelper$AttributeInfo;

    .line 77
    .local v2, "info":Lorg/slim/utils/AttributeHelper$AttributeInfo;
    if-eqz v2, :cond_0

    .line 78
    iget-object v3, v2, Lorg/slim/utils/AttributeHelper$AttributeInfo;->value:Ljava/lang/String;

    const-string/jumbo v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 79
    invoke-virtual {p0, p1, p2}, Lorg/slim/utils/AttributeHelper;->getResourceId(II)I

    move-result v1

    .line 81
    .local v1, "id":I
    :try_start_0
    iget-object v3, p0, Lorg/slim/utils/AttributeHelper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getColor(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/Exception;
    return p2

    .line 87
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "id":I
    :cond_0
    return p2
.end method

.method public getDimensionPixelSize(II)I
    .locals 7
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .prologue
    .line 91
    iget-object v4, p0, Lorg/slim/utils/AttributeHelper;->mMap:Ljava/util/Map;

    invoke-direct {p0, p1}, Lorg/slim/utils/AttributeHelper;->getIdForIndex(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/slim/utils/AttributeHelper$AttributeInfo;

    .line 92
    .local v1, "info":Lorg/slim/utils/AttributeHelper$AttributeInfo;
    if-eqz v1, :cond_0

    .line 93
    iget-object v4, v1, Lorg/slim/utils/AttributeHelper$AttributeInfo;->value:Ljava/lang/String;

    const-string/jumbo v5, "dp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 94
    iget-object v4, v1, Lorg/slim/utils/AttributeHelper$AttributeInfo;->value:Ljava/lang/String;

    const-string/jumbo v5, "dp"

    const-string/jumbo v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 97
    .local v3, "v":Ljava/lang/String;
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 101
    .local v2, "iv":I
    iget-object v4, p0, Lorg/slim/utils/AttributeHelper;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v2, v4}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v4

    return v4

    .line 98
    .end local v2    # "iv":I
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/Exception;
    return p2

    .line 104
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "v":Ljava/lang/String;
    :cond_0
    return p2
.end method

.method public getFloat(IF)F
    .locals 4
    .param p1, "index"    # I
    .param p2, "defValue"    # F

    .prologue
    .line 108
    iget-object v2, p0, Lorg/slim/utils/AttributeHelper;->mMap:Ljava/util/Map;

    invoke-direct {p0, p1}, Lorg/slim/utils/AttributeHelper;->getIdForIndex(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/slim/utils/AttributeHelper$AttributeInfo;

    .line 110
    .local v1, "info":Lorg/slim/utils/AttributeHelper$AttributeInfo;
    :try_start_0
    iget-object v2, v1, Lorg/slim/utils/AttributeHelper$AttributeInfo;->value:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/Exception;
    return p2
.end method

.method public getInt(II)I
    .locals 4
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .prologue
    .line 117
    iget-object v2, p0, Lorg/slim/utils/AttributeHelper;->mMap:Ljava/util/Map;

    invoke-direct {p0, p1}, Lorg/slim/utils/AttributeHelper;->getIdForIndex(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/slim/utils/AttributeHelper$AttributeInfo;

    .line 119
    .local v1, "info":Lorg/slim/utils/AttributeHelper$AttributeInfo;
    :try_start_0
    iget-object v2, v1, Lorg/slim/utils/AttributeHelper$AttributeInfo;->value:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/Exception;
    return p2
.end method

.method public getResourceId(II)I
    .locals 4
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .prologue
    .line 126
    iget-object v2, p0, Lorg/slim/utils/AttributeHelper;->mMap:Ljava/util/Map;

    invoke-direct {p0, p1}, Lorg/slim/utils/AttributeHelper;->getIdForIndex(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/slim/utils/AttributeHelper$AttributeInfo;

    .line 128
    .local v1, "info":Lorg/slim/utils/AttributeHelper$AttributeInfo;
    :try_start_0
    iget-object v2, v1, Lorg/slim/utils/AttributeHelper$AttributeInfo;->value:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/Exception;
    return p2
.end method
