.class public Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;
.super Ljava/lang/Object;
.source "HomeLifeServiceItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/iflytek/viafly/homepage/life/model/ExtendItem;

.field private f:Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel$Action;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 103
    new-instance v0, Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem$1;

    invoke-direct {v0}, Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem$1;-><init>()V

    sput-object v0, Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;->a:Ljava/lang/String;

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;->b:Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;->c:Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;->d:Ljava/lang/String;

    .line 98
    const-class v1, Lcom/iflytek/viafly/homepage/life/model/ExtendItem;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/homepage/life/model/ExtendItem;

    iput-object v1, p0, Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;->e:Lcom/iflytek/viafly/homepage/life/model/ExtendItem;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 100
    .local v0, "tmpAction":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;->f:Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel$Action;

    .line 101
    return-void

    .line 100
    :cond_0
    invoke-static {}, Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel$Action;->values()[Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel$Action;

    move-result-object v1

    aget-object v1, v1, v0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "logoUrl"    # Ljava/lang/String;
    .param p4, "link"    # Ljava/lang/String;
    .param p5, "cpaCode"    # Ljava/lang/String;
    .param p6, "source"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;->a:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;->b:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;->c:Ljava/lang/String;

    .line 26
    iput-object p4, p0, Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;->d:Ljava/lang/String;

    .line 27
    new-instance v0, Lcom/iflytek/viafly/homepage/life/model/ExtendItem;

    invoke-direct {v0, p6, p5}, Lcom/iflytek/viafly/homepage/life/model/ExtendItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;->e:Lcom/iflytek/viafly/homepage/life/model/ExtendItem;

    .line 28
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/iflytek/viafly/homepage/life/model/ExtendItem;)V
    .locals 0
    .param p1, "extend"    # Lcom/iflytek/viafly/homepage/life/model/ExtendItem;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;->e:Lcom/iflytek/viafly/homepage/life/model/ExtendItem;

    .line 68
    return-void
.end method

.method public a(Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel$Action;)V
    .locals 0
    .param p1, "action"    # Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel$Action;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;->f:Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel$Action;

    .line 76
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;->a:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;->b:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .param p1, "logoUrl"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;->c:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0
    .param p1, "link"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;->d:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public e()Lcom/iflytek/viafly/homepage/life/model/ExtendItem;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;->e:Lcom/iflytek/viafly/homepage/life/model/ExtendItem;

    return-object v0
.end method

.method public f()Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel$Action;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;->f:Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel$Action;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 85
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;->e:Lcom/iflytek/viafly/homepage/life/model/ExtendItem;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 90
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;->f:Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel$Action;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/life/model/HomeLifeServiceItem;->f:Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel$Action;

    invoke-virtual {v0}, Lcom/iflytek/viafly/homepage/life/model/HomeLifeModel$Action;->ordinal()I

    move-result v0

    goto :goto_0
.end method
