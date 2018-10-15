.class public Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$UserticketsBean$ChargebuttonBean;
.super Ljava/lang/Object;
.source "ChargeInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$UserticketsBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChargebuttonBean"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$UserticketsBean$ChargebuttonBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 192
    new-instance v0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$UserticketsBean$ChargebuttonBean$1;

    invoke-direct {v0}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$UserticketsBean$ChargebuttonBean$1;-><init>()V

    sput-object v0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$UserticketsBean$ChargebuttonBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$UserticketsBean$ChargebuttonBean;->a:Ljava/lang/String;

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$UserticketsBean$ChargebuttonBean;->b:Ljava/lang/String;

    .line 190
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput-object p1, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$UserticketsBean$ChargebuttonBean;->a:Ljava/lang/String;

    .line 157
    iput-object p2, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$UserticketsBean$ChargebuttonBean;->b:Ljava/lang/String;

    .line 158
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$UserticketsBean$ChargebuttonBean;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$UserticketsBean$ChargebuttonBean;->b:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 183
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$UserticketsBean$ChargebuttonBean;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$UserticketsBean$ChargebuttonBean;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 185
    return-void
.end method
