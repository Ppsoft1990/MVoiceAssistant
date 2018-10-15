.class public Lcom/iflytek/viafly/homepage/audioresource/mode/AudioResourceItem;
.super Lcom/iflytek/viafly/player/entity/Audio;
.source "AudioResourceItem.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "audioUrl"    # Ljava/lang/String;
    .param p4, "display"    # Ljava/lang/String;
    .param p5, "coverUrl"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/iflytek/viafly/player/entity/Audio;-><init>()V

    .line 17
    const-string/jumbo v0, "AudioResourceItem"

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/audioresource/mode/AudioResourceItem;->a:Ljava/lang/String;

    .line 29
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/homepage/audioresource/mode/AudioResourceItem;->l(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0, p2}, Lcom/iflytek/viafly/homepage/audioresource/mode/AudioResourceItem;->m(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0, p3}, Lcom/iflytek/viafly/homepage/audioresource/mode/AudioResourceItem;->n(Ljava/lang/String;)V

    .line 32
    iput-object p4, p0, Lcom/iflytek/viafly/homepage/audioresource/mode/AudioResourceItem;->b:Ljava/lang/String;

    .line 33
    iput-object p5, p0, Lcom/iflytek/viafly/homepage/audioresource/mode/AudioResourceItem;->c:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/iflytek/viafly/player/entity/Audio;-><init>()V

    .line 17
    const-string/jumbo v0, "AudioResourceItem"

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/audioresource/mode/AudioResourceItem;->a:Ljava/lang/String;

    .line 25
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/homepage/audioresource/mode/AudioResourceItem;->a(Lorg/json/JSONObject;)V

    .line 26
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/audioresource/mode/AudioResourceItem;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 53
    if-nez p1, :cond_1

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    const-string/jumbo v1, "id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/homepage/audioresource/mode/AudioResourceItem;->l(Ljava/lang/String;)V

    .line 58
    const-string/jumbo v1, "title"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/homepage/audioresource/mode/AudioResourceItem;->m(Ljava/lang/String;)V

    .line 59
    const-string/jumbo v1, "audioUrl"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/homepage/audioresource/mode/AudioResourceItem;->n(Ljava/lang/String;)V

    .line 60
    const-string/jumbo v1, "display"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/viafly/homepage/audioresource/mode/AudioResourceItem;->b:Ljava/lang/String;

    .line 61
    const-string/jumbo v1, "images"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 62
    .local v0, "images":Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 63
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/viafly/homepage/audioresource/mode/AudioResourceItem;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/audioresource/mode/AudioResourceItem;->c:Ljava/lang/String;

    return-object v0
.end method
