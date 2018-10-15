.class public Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
.super Ljava/lang/Object;
.source "VoiceBaseModel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/voicerole/model/VoiceTxtModel;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:I

.field private o:Ljava/lang/String;

.field private p:Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;

.field private q:Lcom/iflytek/viafly/voicerole/model/Status;

.field private r:Z

.field private s:Z

.field private t:Lcom/iflytek/viafly/voicerole/model/CallOfflineModel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 404
    new-instance v0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel$1;

    invoke-direct {v0}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel$1;-><init>()V

    sput-object v0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string/jumbo v0, "VoiceCategoryBaseModel"

    iput-object v0, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->a:Ljava/lang/String;

    .line 52
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string/jumbo v1, "VoiceCategoryBaseModel"

    iput-object v1, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->a:Ljava/lang/String;

    .line 382
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->a:Ljava/lang/String;

    .line 383
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->b:Ljava/lang/String;

    .line 384
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c:Ljava/lang/String;

    .line 385
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->d:Ljava/lang/String;

    .line 386
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->e:Ljava/lang/String;

    .line 387
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->f:Ljava/lang/String;

    .line 388
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->g:Ljava/lang/String;

    .line 389
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->h:Ljava/lang/String;

    .line 390
    sget-object v1, Lcom/iflytek/viafly/voicerole/model/VoiceTxtModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->i:Ljava/util/List;

    .line 391
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->j:Ljava/lang/String;

    .line 392
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->k:Ljava/lang/String;

    .line 393
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->l:Ljava/lang/String;

    .line 394
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->m:Ljava/lang/String;

    .line 395
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->o:Ljava/lang/String;

    .line 396
    const-class v1, Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;

    iput-object v1, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->p:Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;

    .line 397
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 398
    .local v0, "tmpStatus":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->q:Lcom/iflytek/viafly/voicerole/model/Status;

    .line 399
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->r:Z

    .line 400
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_2

    :goto_2
    iput-boolean v2, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->s:Z

    .line 401
    const-class v1, Lcom/iflytek/viafly/voicerole/model/CallOfflineModel;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/voicerole/model/CallOfflineModel;

    iput-object v1, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->t:Lcom/iflytek/viafly/voicerole/model/CallOfflineModel;

    .line 402
    return-void

    .line 398
    :cond_0
    invoke-static {}, Lcom/iflytek/viafly/voicerole/model/Status;->values()[Lcom/iflytek/viafly/voicerole/model/Status;

    move-result-object v1

    aget-object v1, v1, v0

    goto :goto_0

    :cond_1
    move v1, v3

    .line 399
    goto :goto_1

    :cond_2
    move v2, v3

    .line 400
    goto :goto_2
.end method

.method private a(Lorg/json/JSONArray;)V
    .locals 4
    .param p1, "jsonArray"    # Lorg/json/JSONArray;

    .prologue
    .line 280
    if-nez p1, :cond_1

    .line 296
    :cond_0
    return-void

    .line 283
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->i:Ljava/util/List;

    .line 284
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 285
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 286
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 287
    .local v1, "jsonObject":Lorg/json/JSONObject;
    new-instance v2, Lcom/iflytek/viafly/voicerole/model/VoiceTxtModel;

    invoke-direct {v2}, Lcom/iflytek/viafly/voicerole/model/VoiceTxtModel;-><init>()V

    .line 288
    .local v2, "voiceTxtModel":Lcom/iflytek/viafly/voicerole/model/VoiceTxtModel;
    if-eqz v1, :cond_2

    .line 289
    const-string/jumbo v3, "id"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/voicerole/model/VoiceTxtModel;->c(Ljava/lang/String;)V

    .line 290
    const-string/jumbo v3, "txt"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/voicerole/model/VoiceTxtModel;->a(Ljava/lang/String;)V

    .line 291
    const-string/jumbo v3, "type"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/voicerole/model/VoiceTxtModel;->b(Ljava/lang/String;)V

    .line 293
    :cond_2
    iget-object v3, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->i:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private j(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 443
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 452
    :goto_0
    return-object v1

    .line 448
    :cond_0
    :try_start_0
    const-string/jumbo v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 449
    :catch_0
    move-exception v0

    .line 450
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->a:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private y()Lorg/json/JSONArray;
    .locals 7

    .prologue
    .line 299
    const/4 v2, 0x0

    .line 300
    .local v2, "jsonArray":Lorg/json/JSONArray;
    iget-object v5, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->i:Ljava/util/List;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->i:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 302
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    .local v3, "jsonArray":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_1
    iget-object v5, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->i:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 304
    iget-object v5, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->i:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iflytek/viafly/voicerole/model/VoiceTxtModel;

    .line 305
    .local v4, "voiceTxtModel":Lcom/iflytek/viafly/voicerole/model/VoiceTxtModel;
    invoke-virtual {v4}, Lcom/iflytek/viafly/voicerole/model/VoiceTxtModel;->c()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v1, v5}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 303
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v4    # "voiceTxtModel":Lcom/iflytek/viafly/voicerole/model/VoiceTxtModel;
    :cond_0
    move-object v2, v3

    .line 311
    .end local v1    # "i":I
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    .restart local v2    # "jsonArray":Lorg/json/JSONArray;
    :cond_1
    :goto_1
    return-object v2

    .line 307
    :catch_0
    move-exception v0

    .line 308
    .local v0, "e":Lorg/json/JSONException;
    :goto_2
    iget-object v5, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->a:Ljava/lang/String;

    const-string/jumbo v6, ""

    invoke-static {v5, v6, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 307
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    .restart local v1    # "i":I
    .restart local v3    # "jsonArray":Lorg/json/JSONArray;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    .restart local v2    # "jsonArray":Lorg/json/JSONArray;
    goto :goto_2
.end method


# virtual methods
.method public a()Lcom/iflytek/viafly/voicerole/model/CallOfflineModel;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->t:Lcom/iflytek/viafly/voicerole/model/CallOfflineModel;

    return-object v0
.end method

.method public a(I)V
    .locals 0
    .param p1, "engine"    # I

    .prologue
    .line 67
    iput p1, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->n:I

    .line 68
    return-void
.end method

.method public a(Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;)V
    .locals 0
    .param p1, "audiosResInfo"    # Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->p:Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;

    .line 176
    return-void
.end method

.method public a(Lcom/iflytek/viafly/voicerole/model/Status;)V
    .locals 0
    .param p1, "status"    # Lcom/iflytek/viafly/voicerole/model/Status;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->q:Lcom/iflytek/viafly/voicerole/model/Status;

    .line 196
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->b:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/voicerole/model/VoiceTxtModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 183
    .local p1, "auditiontxt":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/voicerole/model/VoiceTxtModel;>;"
    iput-object p1, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->i:Ljava/util/List;

    .line 184
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 246
    if-nez p1, :cond_0

    .line 277
    :goto_0
    return-void

    .line 249
    :cond_0
    const-string/jumbo v4, "id"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->b:Ljava/lang/String;

    .line 250
    const-string/jumbo v4, "name"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c:Ljava/lang/String;

    .line 251
    const-string/jumbo v4, "tag"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->d:Ljava/lang/String;

    .line 252
    const-string/jumbo v4, "icon"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->e:Ljava/lang/String;

    .line 253
    const-string/jumbo v4, "type"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->f:Ljava/lang/String;

    .line 254
    const-string/jumbo v4, "thumbupcount"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->g:Ljava/lang/String;

    .line 255
    const-string/jumbo v4, "role"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->h:Ljava/lang/String;

    .line 256
    const-string/jumbo v4, "auditionurl"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->j:Ljava/lang/String;

    .line 257
    const-string/jumbo v4, "pkgurl"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->k:Ljava/lang/String;

    .line 258
    const-string/jumbo v4, "pkgsize"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->l:Ljava/lang/String;

    .line 259
    const-string/jumbo v4, "pkgmd5"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->m:Ljava/lang/String;

    .line 260
    const-string/jumbo v4, "engine"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->n:I

    .line 262
    :try_start_0
    const-string/jumbo v4, "engine"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 263
    .local v2, "tempEngine":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 264
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->n:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    .end local v2    # "tempEngine":Ljava/lang/String;
    :cond_1
    :goto_1
    const-string/jumbo v4, "status"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    .line 270
    .local v3, "value":I
    invoke-static {v3}, Lcom/iflytek/viafly/voicerole/model/Status;->fromInt(I)Lcom/iflytek/viafly/voicerole/model/Status;

    move-result-object v4

    iput-object v4, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->q:Lcom/iflytek/viafly/voicerole/model/Status;

    .line 271
    const-string/jumbo v4, "isPlaying"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->r:Z

    .line 272
    const-string/jumbo v4, "ttstxt"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 273
    .local v1, "jsonArray":Lorg/json/JSONArray;
    invoke-direct {p0, v1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->a(Lorg/json/JSONArray;)V

    .line 274
    const-string/jumbo v4, "audiosResInfo"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->b(Lorg/json/JSONObject;)Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->p:Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;

    .line 275
    const-string/jumbo v4, "audiosFileDir"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->o:Ljava/lang/String;

    .line 276
    const-string/jumbo v4, "calloffline"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c(Lorg/json/JSONObject;)Lcom/iflytek/viafly/voicerole/model/CallOfflineModel;

    move-result-object v4

    iput-object v4, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->t:Lcom/iflytek/viafly/voicerole/model/CallOfflineModel;

    goto/16 :goto_0

    .line 266
    .end local v1    # "jsonArray":Lorg/json/JSONArray;
    .end local v3    # "value":I
    :catch_0
    move-exception v0

    .line 267
    .local v0, "e":Ljava/lang/NumberFormatException;
    iget-object v4, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->a:Ljava/lang/String;

    const-string/jumbo v5, ""

    invoke-static {v4, v5, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public a(Z)V
    .locals 0
    .param p1, "playing"    # Z

    .prologue
    .line 203
    iput-boolean p1, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->r:Z

    .line 204
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->n:I

    return v0
.end method

.method public b(Lorg/json/JSONObject;)Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;
    .locals 2
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 315
    new-instance v0, Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;

    invoke-direct {v0}, Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;-><init>()V

    .line 316
    .local v0, "audiosResInfo":Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;
    if-nez p1, :cond_0

    .line 317
    const/4 v0, 0x0

    .line 326
    .end local v0    # "audiosResInfo":Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;
    :goto_0
    return-object v0

    .line 319
    .restart local v0    # "audiosResInfo":Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;
    :cond_0
    const-string/jumbo v1, "appMinVersion"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;->a(I)V

    .line 320
    const-string/jumbo v1, "morningName"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;->a(Ljava/lang/String;)V

    .line 321
    const-string/jumbo v1, "nightName"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;->b(Ljava/lang/String;)V

    .line 322
    const-string/jumbo v1, "remindName"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;->c(Ljava/lang/String;)V

    .line 323
    const-string/jumbo v1, "callName"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;->d(Ljava/lang/String;)V

    .line 324
    const-string/jumbo v1, "messageName"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;->e(Ljava/lang/String;)V

    .line 325
    const-string/jumbo v1, "auditionName"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;->f(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public b(Z)V
    .locals 0
    .param p1, "support"    # Z

    .prologue
    .line 211
    iput-boolean p1, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->s:Z

    .line 212
    return-void
.end method

.method public c(Lorg/json/JSONObject;)Lcom/iflytek/viafly/voicerole/model/CallOfflineModel;
    .locals 3
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 330
    new-instance v0, Lcom/iflytek/viafly/voicerole/model/CallOfflineModel;

    invoke-direct {v0}, Lcom/iflytek/viafly/voicerole/model/CallOfflineModel;-><init>()V

    .line 331
    .local v0, "offlineModel":Lcom/iflytek/viafly/voicerole/model/CallOfflineModel;
    if-nez p1, :cond_0

    .line 332
    const/4 v0, 0x0

    .line 339
    .end local v0    # "offlineModel":Lcom/iflytek/viafly/voicerole/model/CallOfflineModel;
    :goto_0
    return-object v0

    .line 334
    .restart local v0    # "offlineModel":Lcom/iflytek/viafly/voicerole/model/CallOfflineModel;
    :cond_0
    const-string/jumbo v2, "status"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 335
    .local v1, "value":I
    invoke-static {v1}, Lcom/iflytek/viafly/voicerole/model/Status;->fromInt(I)Lcom/iflytek/viafly/voicerole/model/Status;

    move-result-object v2

    iput-object v2, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->q:Lcom/iflytek/viafly/voicerole/model/Status;

    .line 336
    iget-object v2, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->q:Lcom/iflytek/viafly/voicerole/model/Status;

    invoke-virtual {v0, v2}, Lcom/iflytek/viafly/voicerole/model/CallOfflineModel;->a(Lcom/iflytek/viafly/voicerole/model/Status;)V

    .line 337
    const-string/jumbo v2, "url"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/iflytek/viafly/voicerole/model/CallOfflineModel;->b(Ljava/lang/String;)V

    .line 338
    const-string/jumbo v2, "size"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/iflytek/viafly/voicerole/model/CallOfflineModel;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->d:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0
    .param p1, "icon"    # Ljava/lang/String;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->e:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 355
    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->f:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->e:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0
    .param p1, "thumbupcount"    # Ljava/lang/String;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->g:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->f:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0
    .param p1, "role"    # Ljava/lang/String;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->h:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->g:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0
    .param p1, "audiosPkgDir"    # Ljava/lang/String;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->o:Ljava/lang/String;

    .line 168
    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->h:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)Z
    .locals 3
    .param p1, "offlineVoicePath"    # Ljava/lang/String;

    .prologue
    .line 432
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 433
    const/4 v1, 0x1

    .line 438
    :goto_0
    return v1

    .line 435
    :catch_0
    move-exception v0

    .line 436
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->a:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 438
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->j:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->k:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->l:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->m:Ljava/lang/String;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    const-string/jumbo v0, "cloud"

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->o:Ljava/lang/String;

    return-object v0
.end method

.method public p()Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->p:Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;

    return-object v0
.end method

.method public q()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/voicerole/model/VoiceTxtModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 179
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->i:Ljava/util/List;

    return-object v0
.end method

.method public r()Lcom/iflytek/viafly/voicerole/model/Status;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->q:Lcom/iflytek/viafly/voicerole/model/Status;

    if-nez v0, :cond_0

    .line 188
    sget-object v0, Lcom/iflytek/viafly/voicerole/model/Status;->STATUS_INIT:Lcom/iflytek/viafly/voicerole/model/Status;

    .line 190
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->q:Lcom/iflytek/viafly/voicerole/model/Status;

    goto :goto_0
.end method

.method public s()Z
    .locals 1

    .prologue
    .line 199
    iget-boolean v0, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->r:Z

    return v0
.end method

.method public t()Z
    .locals 1

    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->s:Z

    return v0
.end method

.method public u()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 215
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 217
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "id"

    iget-object v3, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 218
    const-string/jumbo v2, "name"

    iget-object v3, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 219
    const-string/jumbo v2, "tag"

    iget-object v3, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 220
    const-string/jumbo v2, "icon"

    iget-object v3, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->e:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 221
    const-string/jumbo v2, "type"

    iget-object v3, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 222
    const-string/jumbo v2, "thumbupcount"

    iget-object v3, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->g:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 223
    const-string/jumbo v2, "role"

    iget-object v3, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->h:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 224
    const-string/jumbo v2, "auditionurl"

    iget-object v3, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->j:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 225
    const-string/jumbo v2, "pkgurl"

    iget-object v3, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->k:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 226
    const-string/jumbo v2, "pkgsize"

    iget-object v3, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->l:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 227
    const-string/jumbo v2, "pkgmd5"

    iget-object v3, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->m:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 228
    const-string/jumbo v2, "ttstxt"

    invoke-direct {p0}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->y()Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 229
    const-string/jumbo v2, "isPlaying"

    iget-boolean v3, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->r:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 230
    const-string/jumbo v2, "status"

    iget-object v3, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->q:Lcom/iflytek/viafly/voicerole/model/Status;

    invoke-static {v3}, Lcom/iflytek/viafly/voicerole/model/Status;->toInt(Lcom/iflytek/viafly/voicerole/model/Status;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 231
    const-string/jumbo v2, "engine"

    iget v3, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->n:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 232
    iget-object v2, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->p:Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;

    if-eqz v2, :cond_0

    .line 233
    const-string/jumbo v2, "audiosResInfo"

    iget-object v3, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->p:Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;

    invoke-virtual {v3}, Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;->f()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 235
    :cond_0
    iget-object v2, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->t:Lcom/iflytek/viafly/voicerole/model/CallOfflineModel;

    if-eqz v2, :cond_1

    .line 236
    const-string/jumbo v2, "calloffline"

    iget-object v3, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->t:Lcom/iflytek/viafly/voicerole/model/CallOfflineModel;

    invoke-virtual {v3}, Lcom/iflytek/viafly/voicerole/model/CallOfflineModel;->d()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 238
    :cond_1
    const-string/jumbo v2, "audiosFileDir"

    iget-object v3, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->o:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    :goto_0
    return-object v1

    .line 239
    :catch_0
    move-exception v0

    .line 240
    .local v0, "e":Lorg/json/JSONException;
    iget-object v2, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->a:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public v()Ljava/lang/String;
    .locals 4

    .prologue
    .line 343
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->i:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 344
    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/voicerole/model/VoiceTxtModel;

    .line 345
    .local v0, "voiceTxtModel":Lcom/iflytek/viafly/voicerole/model/VoiceTxtModel;
    const-string/jumbo v2, "3"

    invoke-virtual {v0}, Lcom/iflytek/viafly/voicerole/model/VoiceTxtModel;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 346
    invoke-virtual {v0}, Lcom/iflytek/viafly/voicerole/model/VoiceTxtModel;->a()Ljava/lang/String;

    move-result-object v1

    .line 350
    .end local v0    # "voiceTxtModel":Lcom/iflytek/viafly/voicerole/model/VoiceTxtModel;
    :goto_0
    return-object v1

    :cond_1
    const-string/jumbo v1, ",\u7075\u7280,\u61c2\u4f60\u7684\u8bed\u97f3\u52a9\u624b,\u9009\u6211,\u4e3a\u4f60\u64ad\u62a5\u5427"

    goto :goto_0
.end method

.method public w()Ljava/lang/String;
    .locals 4

    .prologue
    .line 420
    invoke-virtual {p0}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->a()Lcom/iflytek/viafly/voicerole/model/CallOfflineModel;

    move-result-object v2

    if-nez v2, :cond_0

    .line 422
    const-string/jumbo v2, ""

    .line 426
    :goto_0
    return-object v2

    .line 424
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c()Ljava/lang/String;

    move-result-object v0

    .line 425
    .local v0, "id":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->a()Lcom/iflytek/viafly/voicerole/model/CallOfflineModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/viafly/voicerole/model/CallOfflineModel;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 426
    .local v1, "name":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lbba;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/offline/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 360
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 362
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 363
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 364
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 366
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 368
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->i:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 369
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 370
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 371
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 372
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 373
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->o:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 374
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->p:Lcom/iflytek/viafly/voicerole/model/AudiosResInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 375
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->q:Lcom/iflytek/viafly/voicerole/model/Status;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 376
    iget-boolean v0, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->r:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 377
    iget-boolean v0, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->s:Z

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 378
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->t:Lcom/iflytek/viafly/voicerole/model/CallOfflineModel;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 379
    return-void

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->q:Lcom/iflytek/viafly/voicerole/model/Status;

    invoke-virtual {v0}, Lcom/iflytek/viafly/voicerole/model/Status;->ordinal()I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v2

    .line 376
    goto :goto_1

    :cond_2
    move v1, v2

    .line 377
    goto :goto_2
.end method

.method public x()Ljava/lang/String;
    .locals 2

    .prologue
    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u4e3a\u60a8\u64ad\u62a5"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
