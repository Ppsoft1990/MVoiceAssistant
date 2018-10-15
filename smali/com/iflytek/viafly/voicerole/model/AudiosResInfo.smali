.class public Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;
.super Ljava/lang/Object;
.source "AudiosResInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:I

.field private l:I

.field private m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 205
    new-instance v0, Lcom/iflytek/viafly/voicerole/model/AudiosResInfo$1;

    invoke-direct {v0}, Lcom/iflytek/viafly/voicerole/model/AudiosResInfo$1;-><init>()V

    sput-object v0, Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "minVersion"    # I
    .param p2, "morningName"    # Ljava/lang/String;
    .param p3, "nightName"    # Ljava/lang/String;
    .param p4, "remindName"    # Ljava/lang/String;
    .param p5, "callName"    # Ljava/lang/String;
    .param p6, "messageName"    # Ljava/lang/String;
    .param p7, "auditionName"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;->k:I

    .line 38
    iput-object p2, p0, Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;->e:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;->f:Ljava/lang/String;

    .line 40
    iput-object p4, p0, Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;->g:Ljava/lang/String;

    .line 41
    iput-object p5, p0, Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;->h:Ljava/lang/String;

    .line 42
    iput-object p6, p0, Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;->i:Ljava/lang/String;

    .line 43
    iput-object p7, p0, Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;->j:Ljava/lang/String;

    .line 44
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;->a:Ljava/lang/String;

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;->b:I

    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;->c:Ljava/lang/String;

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;->d:Ljava/lang/String;

    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;->e:Ljava/lang/String;

    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;->f:Ljava/lang/String;

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;->g:Ljava/lang/String;

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;->h:Ljava/lang/String;

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;->i:Ljava/lang/String;

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;->j:Ljava/lang/String;

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;->k:I

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;->l:I

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;->m:Ljava/lang/String;

    .line 203
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;->e:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0
    .param p1, "minVersion"    # I

    .prologue
    .line 139
    iput p1, p0, Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;->k:I

    .line 140
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "morningName"    # Ljava/lang/String;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;->e:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;->f:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1, "nightName"    # Ljava/lang/String;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;->f:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;->g:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .param p1, "remindName"    # Ljava/lang/String;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;->g:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;->h:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0
    .param p1, "callName"    # Ljava/lang/String;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;->h:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;->i:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0
    .param p1, "messageName"    # Ljava/lang/String;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;->i:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public f()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 151
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 153
    .local v1, "object":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "morningName"

    iget-object v3, p0, Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;->e:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 154
    const-string/jumbo v2, "nightName"

    iget-object v3, p0, Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 155
    const-string/jumbo v2, "remindName"

    iget-object v3, p0, Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;->g:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 156
    const-string/jumbo v2, "callName"

    iget-object v3, p0, Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;->h:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 157
    const-string/jumbo v2, "messageName"

    iget-object v3, p0, Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;->i:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 158
    const-string/jumbo v2, "auditionName"

    iget-object v3, p0, Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;->j:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 159
    const-string/jumbo v2, "appMinVersion"

    iget v3, p0, Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;->k:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :goto_0
    return-object v1

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v2, "AudiosResInfo"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 162
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0
    .param p1, "auditionName"    # Ljava/lang/String;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;->j:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 174
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 175
    iget v0, p0, Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 184
    iget v0, p0, Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;->k:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    iget v0, p0, Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;->l:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 187
    return-void
.end method
