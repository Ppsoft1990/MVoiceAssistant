.class public Lcom/iflytek/viafly/voicerole/model/CallOfflineModel;
.super Ljava/lang/Object;
.source "CallOfflineModel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/iflytek/viafly/voicerole/model/CallOfflineModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/iflytek/viafly/voicerole/model/Status;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    new-instance v0, Lcom/iflytek/viafly/voicerole/model/CallOfflineModel$1;

    invoke-direct {v0}, Lcom/iflytek/viafly/voicerole/model/CallOfflineModel$1;-><init>()V

    sput-object v0, Lcom/iflytek/viafly/voicerole/model/CallOfflineModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string/jumbo v0, "CallOfflineModel"

    iput-object v0, p0, Lcom/iflytek/viafly/voicerole/model/CallOfflineModel;->a:Ljava/lang/String;

    .line 73
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string/jumbo v1, "CallOfflineModel"

    iput-object v1, p0, Lcom/iflytek/viafly/voicerole/model/CallOfflineModel;->a:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/viafly/voicerole/model/CallOfflineModel;->b:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/viafly/voicerole/model/CallOfflineModel;->c:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 79
    .local v0, "tmpStatus":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/iflytek/viafly/voicerole/model/CallOfflineModel;->d:Lcom/iflytek/viafly/voicerole/model/Status;

    .line 80
    return-void

    .line 79
    :cond_0
    invoke-static {}, Lcom/iflytek/viafly/voicerole/model/Status;->values()[Lcom/iflytek/viafly/voicerole/model/Status;

    move-result-object v1

    aget-object v1, v1, v0

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/model/CallOfflineModel;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/iflytek/viafly/voicerole/model/Status;)V
    .locals 0
    .param p1, "status"    # Lcom/iflytek/viafly/voicerole/model/Status;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/iflytek/viafly/voicerole/model/CallOfflineModel;->d:Lcom/iflytek/viafly/voicerole/model/Status;

    .line 45
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "size"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/iflytek/viafly/voicerole/model/CallOfflineModel;->b:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/model/CallOfflineModel;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/iflytek/viafly/voicerole/model/CallOfflineModel;->c:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public c()Lcom/iflytek/viafly/voicerole/model/Status;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/model/CallOfflineModel;->d:Lcom/iflytek/viafly/voicerole/model/Status;

    return-object v0
.end method

.method public d()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 48
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 50
    .local v1, "object":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "url"

    iget-object v3, p0, Lcom/iflytek/viafly/voicerole/model/CallOfflineModel;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    const-string/jumbo v2, "size"

    iget-object v3, p0, Lcom/iflytek/viafly/voicerole/model/CallOfflineModel;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    const-string/jumbo v2, "status"

    iget-object v3, p0, Lcom/iflytek/viafly/voicerole/model/CallOfflineModel;->d:Lcom/iflytek/viafly/voicerole/model/Status;

    invoke-static {v3}, Lcom/iflytek/viafly/voicerole/model/Status;->toInt(Lcom/iflytek/viafly/voicerole/model/Status;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_0
    return-object v1

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v2, "CallOfflineModel"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 67
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/model/CallOfflineModel;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/model/CallOfflineModel;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/model/CallOfflineModel;->d:Lcom/iflytek/viafly/voicerole/model/Status;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/model/CallOfflineModel;->d:Lcom/iflytek/viafly/voicerole/model/Status;

    invoke-virtual {v0}, Lcom/iflytek/viafly/voicerole/model/Status;->ordinal()I

    move-result v0

    goto :goto_0
.end method
