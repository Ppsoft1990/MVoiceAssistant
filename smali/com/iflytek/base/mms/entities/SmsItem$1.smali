.class final Lcom/iflytek/base/mms/entities/SmsItem$1;
.super Ljava/lang/Object;
.source "SmsItem.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/base/mms/entities/SmsItem;
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
        "Lcom/iflytek/base/mms/entities/SmsItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/iflytek/base/mms/entities/SmsItem;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 155
    new-instance v0, Lcom/iflytek/base/mms/entities/SmsItem;

    invoke-direct {v0, p1}, Lcom/iflytek/base/mms/entities/SmsItem;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/iflytek/base/mms/entities/SmsItem;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 161
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/iflytek/base/mms/entities/SmsItem$1;->a(Landroid/os/Parcel;)Lcom/iflytek/base/mms/entities/SmsItem;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/iflytek/base/mms/entities/SmsItem$1;->a(I)[Lcom/iflytek/base/mms/entities/SmsItem;

    move-result-object v0

    return-object v0
.end method
