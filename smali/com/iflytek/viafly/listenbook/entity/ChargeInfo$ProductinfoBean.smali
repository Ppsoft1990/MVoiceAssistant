.class public Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$ProductinfoBean;
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
    name = "ProductinfoBean"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$ProductinfoBean;",
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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 104
    new-instance v0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$ProductinfoBean$1;

    invoke-direct {v0}, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$ProductinfoBean$1;-><init>()V

    sput-object v0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$ProductinfoBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$ProductinfoBean;->a:Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$ProductinfoBean;->b:Ljava/lang/String;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$ProductinfoBean;->c:Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$ProductinfoBean;->d:Ljava/lang/String;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$ProductinfoBean;->e:Ljava/lang/String;

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$ProductinfoBean;->f:Ljava/lang/String;

    .line 102
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$ProductinfoBean;->f:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "chapterName"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$ProductinfoBean;->f:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$ProductinfoBean;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1, "productid"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$ProductinfoBean;->a:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$ProductinfoBean;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .param p1, "vipPrice"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$ProductinfoBean;->b:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$ProductinfoBean;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0
    .param p1, "price"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$ProductinfoBean;->c:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$ProductinfoBean;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentId"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$ProductinfoBean;->d:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0
    .param p1, "chapterId"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$ProductinfoBean;->e:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 84
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$ProductinfoBean;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$ProductinfoBean;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$ProductinfoBean;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$ProductinfoBean;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$ProductinfoBean;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/entity/ChargeInfo$ProductinfoBean;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    return-void
.end method
