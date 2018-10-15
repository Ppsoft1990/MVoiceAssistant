.class public Laoq;
.super Ljava/lang/Object;
.source "SMSCollectController.java"

# interfaces
.implements Lvp$d;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string/jumbo v0, "120011"

    iput-object v0, p0, Laoq;->a:Ljava/lang/String;

    .line 28
    iput-object p1, p0, Laoq;->b:Landroid/content/Context;

    .line 29
    return-void
.end method

.method public static a()Z
    .locals 4

    .prologue
    .line 53
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "TELEPHONE_BILL_DATA_FLOW_SMS_COLLECT_SWITCH"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lil;->b(Ljava/lang/String;Z)Z

    move-result v0

    .line 54
    .local v0, "isSwitchOn":Z
    return v0
.end method


# virtual methods
.method public onGetGrayCtrlSuccess(Ljava/util/HashMap;)V
    .locals 5
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
    .line 37
    .local p1, "grayHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 50
    :goto_0
    return-void

    .line 42
    :cond_0
    const-string/jumbo v2, "120011"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 43
    .local v0, "grayLocalTypeValue":Ljava/lang/String;
    const-string/jumbo v2, "SMSCollectController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onGetGrayCtrlSuccess() | grayLocalTypeValue= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    const-string/jumbo v2, "0"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    .line 45
    .local v1, "isSwitchOn":Z
    :goto_1
    const-string/jumbo v2, "SMSCollectController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Switch:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v3, "TELEPHONE_BILL_DATA_FLOW_SMS_COLLECT_SWITCH"

    invoke-virtual {v2, v3, v1}, Lil;->a(Ljava/lang/String;Z)V

    .line 47
    iget-object v2, p0, Laoq;->b:Landroid/content/Context;

    invoke-static {v2}, Ltd;->a(Landroid/content/Context;)Ltd;

    move-result-object v2

    invoke-virtual {v2, v1}, Ltd;->a(Z)V

    goto :goto_0

    .line 44
    .end local v1    # "isSwitchOn":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
