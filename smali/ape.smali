.class public Lape;
.super Ljava/lang/Object;
.source "AutoPlayMusicGrayCtrlManager.java"

# interfaces
.implements Lvp$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lape$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string/jumbo v0, "AutoPlayMusicGrayCtrlManager"

    iput-object v0, p0, Lape;->a:Ljava/lang/String;

    return-void
.end method

.method public static a()Lape;
    .locals 1

    .prologue
    .line 22
    invoke-static {}, Lape$a;->a()Lape;

    move-result-object v0

    return-object v0
.end method

.method private a(Z)V
    .locals 2
    .param p1, "state"    # Z

    .prologue
    .line 42
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_MUSIC_PLAY_SETTING_CTRL"

    invoke-virtual {v0, v1, p1}, Lil;->a(Ljava/lang/String;Z)V

    .line 43
    return-void
.end method


# virtual methods
.method public onGetGrayCtrlSuccess(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p1, "grayHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 38
    :cond_0
    :goto_0
    return-void

    .line 30
    :cond_1
    const-string/jumbo v1, "120028"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 31
    .local v0, "grayLocalTypeValue":Ljava/lang/String;
    const-string/jumbo v1, "AutoPlayMusicGrayCtrlManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Auto play music setting gray is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    const-string/jumbo v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 34
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lape;->a(Z)V

    goto :goto_0

    .line 35
    :cond_2
    const-string/jumbo v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lape;->a(Z)V

    goto :goto_0
.end method
