.class public Lcom/iflytek/viafly/homepage/life/model/ExtendItem;
.super Ljava/lang/Object;
.source "ExtendItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/iflytek/viafly/homepage/life/model/ExtendItem;",
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
    .line 59
    new-instance v0, Lcom/iflytek/viafly/homepage/life/model/ExtendItem$1;

    invoke-direct {v0}, Lcom/iflytek/viafly/homepage/life/model/ExtendItem$1;-><init>()V

    sput-object v0, Lcom/iflytek/viafly/homepage/life/model/ExtendItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/life/model/ExtendItem;->a:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/life/model/ExtendItem;->b:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "cpaCode"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/life/model/ExtendItem;->a:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/iflytek/viafly/homepage/life/model/ExtendItem;->b:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/life/model/ExtendItem;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    const-string/jumbo v0, ""

    .line 26
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/life/model/ExtendItem;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/life/model/ExtendItem;->a:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/life/model/ExtendItem;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    const-string/jumbo v0, ""

    .line 36
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/life/model/ExtendItem;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1, "cpaCode"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/life/model/ExtendItem;->b:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 50
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/life/model/ExtendItem;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/life/model/ExtendItem;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    return-void
.end method
