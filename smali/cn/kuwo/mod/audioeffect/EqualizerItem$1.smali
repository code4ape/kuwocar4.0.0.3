.class final Lcn/kuwo/mod/audioeffect/EqualizerItem$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcn/kuwo/mod/audioeffect/EqualizerItem;
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/kuwo/mod/audioeffect/EqualizerItem;->a(Ljava/lang/String;)Lcn/kuwo/mod/audioeffect/EqualizerItem;

    move-result-object v0

    return-object v0
.end method

.method public a(I)[Lcn/kuwo/mod/audioeffect/EqualizerItem;
    .locals 1

    new-array v0, p1, [Lcn/kuwo/mod/audioeffect/EqualizerItem;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcn/kuwo/mod/audioeffect/EqualizerItem$1;->a(Landroid/os/Parcel;)Lcn/kuwo/mod/audioeffect/EqualizerItem;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcn/kuwo/mod/audioeffect/EqualizerItem$1;->a(I)[Lcn/kuwo/mod/audioeffect/EqualizerItem;

    move-result-object v0

    return-object v0
.end method
