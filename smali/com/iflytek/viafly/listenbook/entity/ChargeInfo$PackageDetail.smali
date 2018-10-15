.class public Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$PackageDetail;
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
    name = "PackageDetail"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$PackageDetail;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 333
    new-instance v0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$PackageDetail$1;

    invoke-direct {v0}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$PackageDetail$1;-><init>()V

    sput-object v0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$PackageDetail;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 321
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$PackageDetail;->a:Ljava/lang/String;

    .line 325
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$PackageDetail;->b:Ljava/lang/String;

    .line 326
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$PackageDetail;->c:Ljava/lang/String;

    .line 327
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$PackageDetail;->d:Ljava/lang/String;

    .line 328
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$PackageDetail;->e:Ljava/lang/String;

    .line 329
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$PackageDetail;->f:Ljava/lang/String;

    .line 330
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$PackageDetail;->g:Ljava/lang/String;

    .line 331
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$PackageDetail;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    .line 253
    iput-object p1, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$PackageDetail;->a:Ljava/lang/String;

    .line 254
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$PackageDetail;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageprice"    # Ljava/lang/String;

    .prologue
    .line 261
    iput-object p1, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$PackageDetail;->b:Ljava/lang/String;

    .line 262
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$PackageDetail;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .param p1, "priceunit"    # Ljava/lang/String;

    .prologue
    .line 269
    iput-object p1, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$PackageDetail;->c:Ljava/lang/String;

    .line 270
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$PackageDetail;->e:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0
    .param p1, "orderurl"    # Ljava/lang/String;

    .prologue
    .line 277
    iput-object p1, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$PackageDetail;->d:Ljava/lang/String;

    .line 278
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 306
    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$PackageDetail;->f:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 285
    iput-object p1, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$PackageDetail;->e:Ljava/lang/String;

    .line 286
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$PackageDetail;->g:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0
    .param p1, "packagedesc"    # Ljava/lang/String;

    .prologue
    .line 293
    iput-object p1, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$PackageDetail;->f:Ljava/lang/String;

    .line 294
    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 0
    .param p1, "packagerule"    # Ljava/lang/String;

    .prologue
    .line 301
    iput-object p1, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$PackageDetail;->g:Ljava/lang/String;

    .line 302
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 311
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$PackageDetail;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$PackageDetail;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$PackageDetail;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$PackageDetail;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 315
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$PackageDetail;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$PackageDetail;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$PackageDetail;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 318
    return-void
.end method
