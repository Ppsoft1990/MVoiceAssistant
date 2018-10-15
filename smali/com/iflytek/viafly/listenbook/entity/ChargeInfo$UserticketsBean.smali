.class public Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$UserticketsBean;
.super Ljava/lang/Object;
.source "ChargeInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserticketsBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$UserticketsBean$ChargebuttonBean;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$UserticketsBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$UserticketsBean$ChargebuttonBean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 226
    new-instance v0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$UserticketsBean$1;

    invoke-direct {v0}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$UserticketsBean$1;-><init>()V

    sput-object v0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$UserticketsBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$UserticketsBean;->a:Ljava/lang/String;

    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$UserticketsBean;->b:Z

    .line 223
    const-class v0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$UserticketsBean$ChargebuttonBean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$UserticketsBean$ChargebuttonBean;

    iput-object v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$UserticketsBean;->c:Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$UserticketsBean$ChargebuttonBean;

    .line 224
    return-void

    .line 222
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$UserticketsBean;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$UserticketsBean$ChargebuttonBean;)V
    .locals 0
    .param p1, "chargebutton"    # Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$UserticketsBean$ChargebuttonBean;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$UserticketsBean;->c:Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$UserticketsBean$ChargebuttonBean;

    .line 149
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "totalcoupon"    # Ljava/lang/String;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$UserticketsBean;->a:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public a(Z)V
    .locals 0
    .param p1, "iscouponenough"    # Z

    .prologue
    .line 140
    iput-boolean p1, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$UserticketsBean;->b:Z

    .line 141
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$UserticketsBean;->b:Z

    return v0
.end method

.method public c()Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$UserticketsBean$ChargebuttonBean;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$UserticketsBean;->c:Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$UserticketsBean$ChargebuttonBean;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 207
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 212
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$UserticketsBean;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 213
    iget-boolean v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$UserticketsBean;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 214
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$UserticketsBean;->c:Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$UserticketsBean$ChargebuttonBean;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 215
    return-void

    .line 213
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
