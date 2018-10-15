.class public Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;
.super Ljava/lang/Object;
.source "ChargeInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$Audition;,
        Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$PackageDetail;,
        Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$UserticketsBean;,
        Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$ProductinfoBean;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$ProductinfoBean;

.field private b:Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$UserticketsBean;

.field private c:Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$PackageDetail;

.field private d:Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$Audition;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 508
    new-instance v0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$1;

    invoke-direct {v0}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$1;-><init>()V

    sput-object v0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 498
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 499
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 501
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 502
    const-class v0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$ProductinfoBean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$ProductinfoBean;

    iput-object v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;->a:Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$ProductinfoBean;

    .line 503
    const-class v0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$UserticketsBean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$UserticketsBean;

    iput-object v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;->b:Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$UserticketsBean;

    .line 504
    const-class v0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$PackageDetail;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$PackageDetail;

    iput-object v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;->c:Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$PackageDetail;

    .line 505
    const-class v0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$Audition;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$Audition;

    iput-object v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;->d:Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$Audition;

    .line 506
    return-void
.end method


# virtual methods
.method public a()Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$ProductinfoBean;
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;->a:Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$ProductinfoBean;

    return-object v0
.end method

.method public a(Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$Audition;)V
    .locals 0
    .param p1, "audition"    # Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$Audition;

    .prologue
    .line 482
    iput-object p1, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;->d:Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$Audition;

    .line 483
    return-void
.end method

.method public a(Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$PackageDetail;)V
    .locals 0
    .param p1, "packageDetail"    # Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$PackageDetail;

    .prologue
    .line 474
    iput-object p1, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;->c:Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$PackageDetail;

    .line 475
    return-void
.end method

.method public a(Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$ProductinfoBean;)V
    .locals 0
    .param p1, "productinfo"    # Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$ProductinfoBean;

    .prologue
    .line 458
    iput-object p1, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;->a:Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$ProductinfoBean;

    .line 459
    return-void
.end method

.method public a(Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$UserticketsBean;)V
    .locals 0
    .param p1, "usertickets"    # Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$UserticketsBean;

    .prologue
    .line 466
    iput-object p1, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;->b:Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$UserticketsBean;

    .line 467
    return-void
.end method

.method public b()Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$UserticketsBean;
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;->b:Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$UserticketsBean;

    return-object v0
.end method

.method public c()Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$PackageDetail;
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;->c:Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$PackageDetail;

    return-object v0
.end method

.method public d()Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$Audition;
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;->d:Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$Audition;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 487
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 492
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;->a:Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$ProductinfoBean;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 493
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;->b:Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$UserticketsBean;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 494
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;->c:Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$PackageDetail;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 495
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;->d:Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$Audition;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 496
    return-void
.end method
