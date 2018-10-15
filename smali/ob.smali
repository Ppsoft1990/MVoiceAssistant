.class public Lob;
.super Ljava/lang/Object;
.source "LBSGrayCtrlManager.java"

# interfaces
.implements Lvp$d;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string/jumbo v0, "120007"

    iput-object v0, p0, Lob;->a:Ljava/lang/String;

    .line 33
    const-string/jumbo v0, "120008"

    iput-object v0, p0, Lob;->b:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public static a()Z
    .locals 4

    .prologue
    .line 78
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "SETTINGS_NEED_UPLOAD_LBS_LOCATE_LOG"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lil;->b(Ljava/lang/String;Z)Z

    move-result v0

    .line 80
    .local v0, "isNeedUploadLog":Z
    return v0
.end method


# virtual methods
.method public onGetGrayCtrlSuccess(Ljava/util/HashMap;)V
    .locals 7
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
    .line 47
    .local p1, "grayHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 69
    :goto_0
    return-void

    .line 51
    :cond_0
    const-string/jumbo v4, "120007"

    .line 52
    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 53
    .local v0, "grayLocalTypeValue":Ljava/lang/String;
    const-string/jumbo v4, "LBS_LBSGrayCtrlManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onGetGrayCtrlSuccess() | grayLocalTypeValue= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const/4 v3, 0x0

    .line 55
    .local v3, "locateType":I
    const-string/jumbo v4, "1"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 56
    const/4 v3, 0x1

    .line 58
    :cond_1
    invoke-static {}, Lil;->a()Lil;

    move-result-object v4

    const-string/jumbo v5, "SETTINGS_LBS_LOCATE_TYPE"

    invoke-virtual {v4, v5, v3}, Lil;->a(Ljava/lang/String;I)V

    .line 60
    const-string/jumbo v4, "120008"

    .line 61
    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 62
    .local v1, "grayLogUploadValue":Ljava/lang/String;
    const-string/jumbo v4, "LBS_LBSGrayCtrlManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onGetGrayCtrlSuccess() | grayLogUploadValue= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const/4 v2, 0x1

    .line 64
    .local v2, "isNeedUpdateLog":Z
    const-string/jumbo v4, "0"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 65
    const/4 v2, 0x0

    .line 67
    :cond_2
    invoke-static {}, Lil;->a()Lil;

    move-result-object v4

    const-string/jumbo v5, "SETTINGS_NEED_UPLOAD_LBS_LOCATE_LOG"

    invoke-virtual {v4, v5, v2}, Lil;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method
