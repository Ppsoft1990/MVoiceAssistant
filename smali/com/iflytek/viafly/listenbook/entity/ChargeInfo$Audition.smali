.class public Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$Audition;
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
    name = "Audition"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$Audition;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 440
    new-instance v0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$Audition$1;

    invoke-direct {v0}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$Audition$1;-><init>()V

    sput-object v0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$Audition;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 428
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 431
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$Audition;->a:Ljava/lang/String;

    .line 432
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$Audition;->b:Ljava/lang/String;

    .line 433
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$Audition;->c:I

    .line 434
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$Audition;->d:I

    .line 435
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$Audition;->e:I

    .line 436
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$Audition;->f:Ljava/lang/String;

    .line 437
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$Audition;->g:Ljava/lang/String;

    .line 438
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$Audition;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 376
    iput p1, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$Audition;->c:I

    .line 377
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 360
    iput-object p1, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$Audition;->a:Ljava/lang/String;

    .line 361
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$Audition;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .locals 0
    .param p1, "auditionreduration"    # I

    .prologue
    .line 384
    iput p1, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$Audition;->d:I

    .line 385
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1, "coderate"    # Ljava/lang/String;

    .prologue
    .line 368
    iput-object p1, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$Audition;->b:Ljava/lang/String;

    .line 369
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 380
    iget v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$Audition;->d:I

    return v0
.end method

.method public c(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 392
    iput p1, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$Audition;->e:I

    .line 393
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .param p1, "chapterName"    # Ljava/lang/String;

    .prologue
    .line 400
    iput-object p1, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$Audition;->f:Ljava/lang/String;

    .line 401
    return-void
.end method

.method public d()I
    .locals 1

    .prologue
    .line 388
    iget v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$Audition;->e:I

    return v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0
    .param p1, "detailUrl"    # Ljava/lang/String;

    .prologue
    .line 408
    iput-object p1, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$Audition;->g:Ljava/lang/String;

    .line 409
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 413
    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$Audition;->f:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$Audition;->g:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 418
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$Audition;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 419
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$Audition;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 420
    iget v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$Audition;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 421
    iget v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$Audition;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 422
    iget v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$Audition;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 423
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$Audition;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 424
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$Audition;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 425
    return-void
.end method
