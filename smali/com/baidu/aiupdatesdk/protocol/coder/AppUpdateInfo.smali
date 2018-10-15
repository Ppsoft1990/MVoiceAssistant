.class public Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;
.super Ljava/lang/Object;
.source "AppUpdateInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:J

.field private g:Ljava/lang/String;

.field private h:J

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:I

.field private m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 188
    new-instance v0, Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo$1;

    invoke-direct {v0}, Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo$1;-><init>()V

    sput-object v0, Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "appSname"    # Ljava/lang/String;
    .param p2, "appVersionName"    # Ljava/lang/String;
    .param p3, "appPackage"    # Ljava/lang/String;
    .param p4, "appVersionCode"    # I
    .param p5, "appUrl"    # Ljava/lang/String;
    .param p6, "appSize"    # J
    .param p8, "appPath"    # Ljava/lang/String;
    .param p9, "appPathSize"    # J
    .param p11, "appIconUrl"    # Ljava/lang/String;
    .param p12, "appChangeLog"    # Ljava/lang/String;
    .param p13, "appMd5"    # Ljava/lang/String;
    .param p14, "forceUpdate"    # I
    .param p15, "channelId"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;->a:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;->b:Ljava/lang/String;

    .line 49
    iput-object p3, p0, Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;->c:Ljava/lang/String;

    .line 50
    iput p4, p0, Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;->d:I

    .line 51
    iput-object p5, p0, Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;->e:Ljava/lang/String;

    .line 52
    iput-wide p6, p0, Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;->f:J

    .line 53
    iput-object p8, p0, Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;->g:Ljava/lang/String;

    .line 54
    iput-wide p9, p0, Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;->h:J

    .line 55
    iput-object p11, p0, Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;->i:Ljava/lang/String;

    .line 56
    iput-object p12, p0, Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;->j:Ljava/lang/String;

    .line 57
    iput-object p13, p0, Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;->k:Ljava/lang/String;

    .line 58
    iput p14, p0, Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;->l:I

    .line 59
    iput-object p15, p0, Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;->m:Ljava/lang/String;

    .line 60
    return-void
.end method

.method static synthetic a(Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;
    .param p1, "x1"    # I

    .prologue
    .line 8
    iput p1, p0, Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;->d:I

    return p1
.end method

.method static synthetic a(Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;J)J
    .locals 1
    .param p0, "x0"    # Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;
    .param p1, "x1"    # J

    .prologue
    .line 8
    iput-wide p1, p0, Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;->f:J

    return-wide p1
.end method

.method public static a(Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;)Lcom/baidu/aiupdatesdk/UpdateInfo;
    .locals 6
    .param p0, "appUpdateInfo"    # Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;

    .prologue
    const/4 v1, 0x1

    .line 25
    const/4 v0, 0x0

    .line 26
    .local v0, "info":Lcom/baidu/aiupdatesdk/UpdateInfo;
    if-eqz p0, :cond_0

    .line 27
    new-instance v0, Lcom/baidu/aiupdatesdk/UpdateInfo;

    .end local v0    # "info":Lcom/baidu/aiupdatesdk/UpdateInfo;
    invoke-direct {v0}, Lcom/baidu/aiupdatesdk/UpdateInfo;-><init>()V

    .line 28
    .restart local v0    # "info":Lcom/baidu/aiupdatesdk/UpdateInfo;
    iget-object v2, p0, Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/baidu/aiupdatesdk/UpdateInfo;->setVersion(Ljava/lang/String;)V

    .line 29
    iget-wide v2, p0, Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;->f:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 30
    iget-wide v2, p0, Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;->f:J

    invoke-virtual {v0, v2, v3}, Lcom/baidu/aiupdatesdk/UpdateInfo;->setSize(J)V

    .line 34
    :goto_0
    iget-object v2, p0, Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;->j:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/baidu/aiupdatesdk/UpdateInfo;->setChangeLog(Ljava/lang/String;)V

    .line 35
    iget v2, p0, Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;->l:I

    if-ne v2, v1, :cond_2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/baidu/aiupdatesdk/UpdateInfo;->setForceUpdate(Z)V

    .line 37
    :cond_0
    return-object v0

    .line 32
    :cond_1
    iget-wide v2, p0, Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;->h:J

    invoke-virtual {v0, v2, v3}, Lcom/baidu/aiupdatesdk/UpdateInfo;->setSize(J)V

    goto :goto_0

    .line 35
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method static synthetic a(Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 8
    iput-object p1, p0, Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;->a:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;
    .param p1, "x1"    # I

    .prologue
    .line 8
    iput p1, p0, Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;->l:I

    return p1
.end method

.method static synthetic b(Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;J)J
    .locals 1
    .param p0, "x0"    # Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;
    .param p1, "x1"    # J

    .prologue
    .line 8
    iput-wide p1, p0, Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;->h:J

    return-wide p1
.end method

.method static synthetic b(Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 8
    iput-object p1, p0, Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;->b:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 8
    iput-object p1, p0, Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;->c:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 8
    iput-object p1, p0, Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;->e:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic e(Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 8
    iput-object p1, p0, Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;->g:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic f(Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 8
    iput-object p1, p0, Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;->i:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic g(Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 8
    iput-object p1, p0, Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;->j:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic h(Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 8
    iput-object p1, p0, Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;->k:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic i(Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 8
    iput-object p1, p0, Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;->m:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;->d:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;->m:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 173
    iget-object v0, p0, Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 176
    iget v0, p0, Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    iget-object v0, p0, Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 178
    iget-wide v0, p0, Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;->f:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 179
    iget-object v0, p0, Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 180
    iget-wide v0, p0, Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;->h:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 181
    iget-object v0, p0, Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 184
    iget v0, p0, Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;->l:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    iget-object v0, p0, Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 186
    return-void
.end method
