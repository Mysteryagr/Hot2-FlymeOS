.class final Lorg/slim/preference/colorpicker/ColorPickerPreference$SavedState$1;
.super Ljava/lang/Object;
.source "ColorPickerPreference.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/slim/preference/colorpicker/ColorPickerPreference$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lorg/slim/preference/colorpicker/ColorPickerPreference$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 308
    invoke-virtual {p0, p1}, Lorg/slim/preference/colorpicker/ColorPickerPreference$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lorg/slim/preference/colorpicker/ColorPickerPreference$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/slim/preference/colorpicker/ColorPickerPreference$SavedState;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 309
    new-instance v0, Lorg/slim/preference/colorpicker/ColorPickerPreference$SavedState;

    invoke-direct {v0, p1}, Lorg/slim/preference/colorpicker/ColorPickerPreference$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 312
    invoke-virtual {p0, p1}, Lorg/slim/preference/colorpicker/ColorPickerPreference$SavedState$1;->newArray(I)[Lorg/slim/preference/colorpicker/ColorPickerPreference$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lorg/slim/preference/colorpicker/ColorPickerPreference$SavedState;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 313
    new-array v0, p1, [Lorg/slim/preference/colorpicker/ColorPickerPreference$SavedState;

    return-object v0
.end method