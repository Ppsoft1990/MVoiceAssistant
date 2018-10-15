.class public final Lcom/iflytek/lms/telephony/TelephonyInfo;
.super Ljava/lang/Object;
.source "TelephonyInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/iflytek/lms/telephony/TelephonyInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lcom/iflytek/lms/telephony/TelephonyInfo$1;

    invoke-direct {v0}, Lcom/iflytek/lms/telephony/TelephonyInfo$1;-><init>()V

    sput-object v0, Lcom/iflytek/lms/telephony/TelephonyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 87
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/lms/telephony/TelephonyInfo;->b:Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/lms/telephony/TelephonyInfo;->c:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/iflytek/lms/telephony/TelephonyInfo;->a:I

    .line 26
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0
    .param p1, "infoType"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/iflytek/lms/telephony/TelephonyInfo;->a:I

    .line 62
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "totalFlow"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/iflytek/lms/telephony/TelephonyInfo;->b:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1, "usedFlow"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/iflytek/lms/telephony/TelephonyInfo;->c:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 71
    iget-object v0, p0, Lcom/iflytek/lms/telephony/TelephonyInfo;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/iflytek/lms/telephony/TelephonyInfo;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    iget v0, p0, Lcom/iflytek/lms/telephony/TelephonyInfo;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    return-void
.end method
