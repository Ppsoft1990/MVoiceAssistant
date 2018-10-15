.class final Lo/fk;
.super Lcom/cmcc/migusso/service/IPCCallback$Stub;
.source "AuthImpl.java"


# instance fields
.field private synthetic a:Lo/fh;


# direct methods
.method constructor <init>(Lo/fh;)V
    .locals 0

    iput-object p1, p0, Lo/fk;->a:Lo/fh;

    invoke-direct {p0}, Lcom/cmcc/migusso/service/IPCCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final callback(Landroid/os/Bundle;)V
    .locals 4

    const-string/jumbo v0, "resultCode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const v1, 0x18e70

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lo/fk;->a:Lo/fh;

    invoke-static {v1}, Lo/fh;->d(Lo/fh;)Z

    const-string/jumbo v1, "commandid"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "commandid = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    sparse-switch v1, :sswitch_data_0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/ad;->a(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    iget-object v1, p0, Lo/fk;->a:Lo/fh;

    invoke-static {v1, v0}, Lo/fh;->a(Lo/fh;Lorg/json/JSONObject;)V

    return-void

    :sswitch_0
    invoke-static {p1}, Lo/ad;->g(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "passid"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/fh;->a(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :sswitch_1
    invoke-static {p1}, Lo/ad;->f(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    :sswitch_2
    invoke-static {p1}, Lo/ad;->h(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    :sswitch_3
    invoke-static {p1}, Lo/ad;->l(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    :sswitch_4
    invoke-static {p1}, Lo/ad;->k(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    :sswitch_5
    invoke-static {p1}, Lo/ad;->m(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    :sswitch_6
    invoke-static {p1}, Lo/ad;->n(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    :sswitch_7
    invoke-static {v0, p1}, Lo/ad;->a(ILandroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    :sswitch_8
    invoke-static {v0, p1}, Lo/ad;->b(ILandroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    :sswitch_9
    invoke-static {p1}, Lo/ad;->i(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    :sswitch_a
    invoke-static {p1}, Lo/ad;->j(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    :cond_0
    const v1, 0x194b2

    if-ne v1, v0, :cond_1

    invoke-static {p1}, Lo/ad;->a(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    :cond_1
    const v1, 0x19453

    if-ne v1, v0, :cond_2

    invoke-static {p1}, Lo/ad;->b(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    :cond_2
    const v1, 0x194b7

    if-ne v1, v0, :cond_3

    invoke-static {p1}, Lo/ad;->c(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    :cond_3
    const v1, 0x19456

    if-eq v1, v0, :cond_4

    const v1, 0x19457

    if-ne v1, v0, :cond_5

    :cond_4
    invoke-static {p1}, Lo/ad;->d(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    :cond_5
    const v1, 0x1945c

    if-eq v1, v0, :cond_6

    const v1, 0x1945b

    if-eq v1, v0, :cond_6

    const v1, 0x195dd

    if-ne v1, v0, :cond_7

    :cond_6
    invoke-static {p1}, Lo/ad;->e(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    const v1, 0x19462

    if-eq v1, v0, :cond_8

    const v1, 0x19461

    if-ne v1, v0, :cond_9

    :cond_8
    invoke-static {v0, p1}, Lo/ad;->a(ILandroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v1, "resultString"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/ad;->a(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x5 -> :sswitch_0
        0x6 -> :sswitch_0
        0x7 -> :sswitch_1
        0x8 -> :sswitch_1
        0xd -> :sswitch_6
        0x10 -> :sswitch_0
        0x11 -> :sswitch_2
        0x15 -> :sswitch_3
        0x16 -> :sswitch_0
        0x17 -> :sswitch_4
        0x18 -> :sswitch_5
        0x19 -> :sswitch_8
        0x1b -> :sswitch_7
        0x37 -> :sswitch_9
        0x38 -> :sswitch_a
    .end sparse-switch
.end method
