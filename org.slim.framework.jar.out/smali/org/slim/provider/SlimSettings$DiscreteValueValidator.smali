.class final Lorg/slim/provider/SlimSettings$DiscreteValueValidator;
.super Ljava/lang/Object;
.source "SlimSettings.java"

# interfaces
.implements Lorg/slim/provider/SlimSettings$Validator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/slim/provider/SlimSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DiscreteValueValidator"
.end annotation


# instance fields
.field private final mValues:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 0
    .param p1, "values"    # [Ljava/lang/String;

    .prologue
    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput-object p1, p0, Lorg/slim/provider/SlimSettings$DiscreteValueValidator;->mValues:[Ljava/lang/String;

    .line 177
    return-void
.end method


# virtual methods
.method public validate(Ljava/lang/String;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 183
    iget-object v0, p0, Lorg/slim/provider/SlimSettings$DiscreteValueValidator;->mValues:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method