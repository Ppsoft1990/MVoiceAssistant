.class final Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo$1;
.super Ljava/lang/Object;
.source "AppUpdateInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;
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
        "Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;
    .locals 4
    .param p1, "arg0"    # Landroid/os/Parcel;

    .prologue
    .line 192
    new-instance v0, Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;

    invoke-direct {v0}, Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;-><init>()V

    .line 194
    .local v0, "entry":Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;->a(Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;->b(Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;->c(Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;->a(Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;I)I

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;->d(Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;->a(Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;J)J

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;->e(Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;->b(Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;J)J

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;->f(Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;->g(Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;->h(Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;->b(Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;I)I

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;->i(Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 208
    return-object v0
.end method

.method public a(I)[Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 213
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 188
    invoke-virtual {p0, p1}, Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo$1;->a(Landroid/os/Parcel;)Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 188
    invoke-virtual {p0, p1}, Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo$1;->a(I)[Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;

    move-result-object v0

    return-object v0
.end method
