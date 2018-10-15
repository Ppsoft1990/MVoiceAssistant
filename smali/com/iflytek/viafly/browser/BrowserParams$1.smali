.class final Lcom/iflytek/viafly/browser/BrowserParams$1;
.super Ljava/lang/Object;
.source "BrowserParams.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/browser/BrowserParams;
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
        "Lcom/iflytek/viafly/browser/BrowserParams;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/iflytek/viafly/browser/BrowserParams;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 47
    new-instance v0, Lcom/iflytek/viafly/browser/BrowserParams;

    invoke-direct {v0}, Lcom/iflytek/viafly/browser/BrowserParams;-><init>()V

    .line 48
    .local v0, "item":Lcom/iflytek/viafly/browser/BrowserParams;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/iflytek/viafly/browser/BrowserParams;->showText:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/iflytek/viafly/browser/BrowserParams;->url:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/iflytek/viafly/browser/BrowserParams;->info:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/iflytek/viafly/browser/BrowserParams;->postData:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/iflytek/viafly/browser/BrowserParams;->titleText:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/iflytek/viafly/browser/BrowserParams;->subTitleText:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    iput-object v1, v0, Lcom/iflytek/viafly/browser/BrowserParams;->browserConnectionClass:Ljava/lang/Class;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    iput-object v1, v0, Lcom/iflytek/viafly/browser/BrowserParams;->browserViewComponents:Ljava/lang/Class;

    .line 56
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/browser/BrowserParams$1;->createFromParcel(Landroid/os/Parcel;)Lcom/iflytek/viafly/browser/BrowserParams;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/iflytek/viafly/browser/BrowserParams;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 60
    new-array v0, p1, [Lcom/iflytek/viafly/browser/BrowserParams;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/browser/BrowserParams$1;->newArray(I)[Lcom/iflytek/viafly/browser/BrowserParams;

    move-result-object v0

    return-object v0
.end method
