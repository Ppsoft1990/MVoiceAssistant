.class public Lyf;
.super Lcom/iflytek/yd/business/BasicInfo;
.source "NetSpecificVoiceInfo.java"


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/iflytek/viafly/dial/specific/SpecificVoice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/iflytek/yd/business/BasicInfo;-><init>()V

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lyf;->a:Ljava/util/Map;

    .line 20
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "roleName"    # Ljava/lang/String;

    .prologue
    .line 33
    iget-object v1, p0, Lyf;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/dial/specific/SpecificVoice;

    .line 34
    .local v0, "specificVoice":Lcom/iflytek/viafly/dial/specific/SpecificVoice;
    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {v0}, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->f()Ljava/lang/String;

    move-result-object v1

    .line 37
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public a(Lcom/iflytek/viafly/dial/specific/SpecificVoice;)V
    .locals 2
    .param p1, "voice"    # Lcom/iflytek/viafly/dial/specific/SpecificVoice;

    .prologue
    .line 23
    if-eqz p1, :cond_0

    .line 24
    iget-object v0, p0, Lyf;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->i()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    :cond_0
    return-void
.end method
