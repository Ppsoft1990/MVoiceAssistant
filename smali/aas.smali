.class public Laas;
.super Ljava/lang/Object;
.source "CmbusinessSimcardHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laas$a;
    }
.end annotation


# static fields
.field private static a:Laas;


# instance fields
.field private b:Lhy;

.field private c:Lcom/iflytek/yd/system/SimType;

.field private d:Z

.field private e:Lcom/iflytek/viafly/ui/dialog/ListDialog;

.field private final f:[Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    sget-object v0, Lcom/iflytek/yd/system/SimType;->Unknown:Lcom/iflytek/yd/system/SimType;

    iput-object v0, p0, Laas;->c:Lcom/iflytek/yd/system/SimType;

    .line 43
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "\u4e2d\u56fd\u79fb\u52a8"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "\u4e2d\u56fd\u7535\u4fe1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "\u4e2d\u56fd\u8054\u901a"

    aput-object v2, v0, v1

    iput-object v0, p0, Laas;->f:[Ljava/lang/String;

    .line 53
    invoke-static {}, Lhy;->a()Lhy;

    move-result-object v0

    iput-object v0, p0, Laas;->b:Lhy;

    .line 54
    return-void
.end method

.method public static a()Laas;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Laas;->a:Laas;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Laas;

    invoke-direct {v0}, Laas;-><init>()V

    sput-object v0, Laas;->a:Laas;

    .line 49
    :cond_0
    sget-object v0, Laas;->a:Laas;

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneNum"    # Ljava/lang/String;
    .param p3, "smsBody"    # Ljava/lang/String;

    .prologue
    .line 204
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 205
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "smsto:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 206
    .local v2, "smsToUri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.SENDTO"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 208
    .local v1, "mIntent":Landroid/content/Intent;
    const-string/jumbo v3, "sms_body"

    invoke-virtual {v1, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    .end local v1    # "mIntent":Landroid/content/Intent;
    .end local v2    # "smsToUri":Landroid/net/Uri;
    :cond_0
    :goto_0
    return-void

    .line 211
    :catch_0
    move-exception v0

    .line 212
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v3, "CmbusinessSimcardHelper"

    const-string/jumbo v4, "sendSmsBySystem ex happened"

    invoke-static {v3, v4, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "smsBody"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 223
    .local p2, "addressList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    :cond_0
    const-string/jumbo v0, "CmbusinessSimcardHelper"

    const-string/jumbo v1, "sendSmsBySelf param is invalidate.."

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :goto_0
    return-void

    .line 227
    :cond_1
    invoke-static {}, Lhp;->a()Lhp;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lhp;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;ZLhr;)V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Lhr;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "smsBody"    # Ljava/lang/String;
    .param p4, "listener"    # Lhr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lhr;",
            ")V"
        }
    .end annotation

    .prologue
    .line 231
    .local p2, "addressList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 232
    :cond_0
    const-string/jumbo v0, "CmbusinessSimcardHelper"

    const-string/jumbo v1, "sendSmsBySelf param is invalidate.."

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :goto_0
    return-void

    .line 235
    :cond_1
    invoke-static {}, Lhp;->a()Lhp;

    move-result-object v0

    const/4 v4, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lhp;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;ZLhr;)V

    goto :goto_0
.end method

.method static synthetic a(Laas;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Laas;

    .prologue
    .line 30
    iget-object v0, p0, Laas;->f:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Laas;)Lcom/iflytek/viafly/ui/dialog/ListDialog;
    .locals 1
    .param p0, "x0"    # Laas;

    .prologue
    .line 30
    iget-object v0, p0, Laas;->e:Lcom/iflytek/viafly/ui/dialog/ListDialog;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Laat;Ljava/lang/String;Z)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "smsParam"    # Laat;
    .param p3, "queryType"    # Ljava/lang/String;
    .param p4, "isSimTypeKnown"    # Z

    .prologue
    const/4 v5, 0x0

    .line 145
    const-string/jumbo v2, "CmbusinessSimcardHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ISmsParam is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", queryType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    if-eqz p2, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    const-string/jumbo v2, "queryTelFee"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 150
    invoke-interface {p2}, Laat;->b()Ljava/util/List;

    move-result-object v1

    .line 151
    .local v1, "addressList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p4, :cond_5

    .line 152
    invoke-interface {p2}, Laat;->i()Lcom/iflytek/yd/system/SimType;

    move-result-object v2

    sget-object v3, Lcom/iflytek/yd/system/SimType;->China_Mobile:Lcom/iflytek/yd/system/SimType;

    if-eq v2, v3, :cond_4

    .line 153
    sget-object v2, Lcom/iflytek/viafly/mms/smscollect/SMSCollectType;->TELEPHONE_BILL:Lcom/iflytek/viafly/mms/smscollect/SMSCollectType;

    invoke-static {v2, p1}, Laos;->a(Lcom/iflytek/viafly/mms/smscollect/SMSCollectType;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 154
    invoke-interface {p2}, Laat;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Laos;->a(Landroid/content/Context;)Laos;

    move-result-object v3

    invoke-virtual {v3}, Laos;->a()Laou;

    move-result-object v3

    invoke-direct {p0, p1, v1, v2, v3}, Laas;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Lhr;)V

    .line 155
    const-string/jumbo v0, ""

    .line 156
    .local v0, "address":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 157
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "address":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 159
    .restart local v0    # "address":Ljava/lang/String;
    :cond_2
    invoke-static {p1}, Laos;->a(Landroid/content/Context;)Laos;

    move-result-object v2

    sget-object v3, Lcom/iflytek/viafly/mms/smscollect/SMSCollectType;->TELEPHONE_BILL:Lcom/iflytek/viafly/mms/smscollect/SMSCollectType;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5, v0}, Laos;->a(Lcom/iflytek/viafly/mms/smscollect/SMSCollectType;JLjava/lang/String;)V

    goto :goto_0

    .line 161
    .end local v0    # "address":Ljava/lang/String;
    :cond_3
    invoke-interface {p2}, Laat;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Laas;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 164
    :cond_4
    invoke-interface {p2}, Laat;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Laas;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 166
    :cond_5
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 167
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p2}, Laat;->c()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v2, v3}, Laas;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 169
    .end local v1    # "addressList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    const-string/jumbo v2, "queryTelCredits"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 170
    invoke-interface {p2}, Laat;->d()Ljava/util/List;

    move-result-object v1

    .line 171
    .restart local v1    # "addressList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p4, :cond_7

    .line 172
    invoke-interface {p2}, Laat;->e()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Laas;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 173
    :cond_7
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 174
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p2}, Laat;->e()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v2, v3}, Laas;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 176
    .end local v1    # "addressList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_8
    const-string/jumbo v2, "queryDataTrans"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 177
    invoke-interface {p2}, Laat;->f()Ljava/util/List;

    move-result-object v1

    .line 178
    .restart local v1    # "addressList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p4, :cond_c

    .line 179
    invoke-interface {p2}, Laat;->i()Lcom/iflytek/yd/system/SimType;

    move-result-object v2

    sget-object v3, Lcom/iflytek/yd/system/SimType;->China_Mobile:Lcom/iflytek/yd/system/SimType;

    if-eq v2, v3, :cond_b

    .line 180
    sget-object v2, Lcom/iflytek/viafly/mms/smscollect/SMSCollectType;->DATA_FLOW:Lcom/iflytek/viafly/mms/smscollect/SMSCollectType;

    invoke-static {v2, p1}, Laos;->a(Lcom/iflytek/viafly/mms/smscollect/SMSCollectType;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 181
    invoke-interface {p2}, Laat;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Laos;->a(Landroid/content/Context;)Laos;

    move-result-object v3

    invoke-virtual {v3}, Laos;->b()Laou;

    move-result-object v3

    invoke-direct {p0, p1, v1, v2, v3}, Laas;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Lhr;)V

    .line 182
    const-string/jumbo v0, ""

    .line 183
    .restart local v0    # "address":Ljava/lang/String;
    if-eqz v1, :cond_9

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    .line 184
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "address":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 186
    .restart local v0    # "address":Ljava/lang/String;
    :cond_9
    invoke-static {p1}, Laos;->a(Landroid/content/Context;)Laos;

    move-result-object v2

    sget-object v3, Lcom/iflytek/viafly/mms/smscollect/SMSCollectType;->DATA_FLOW:Lcom/iflytek/viafly/mms/smscollect/SMSCollectType;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5, v0}, Laos;->a(Lcom/iflytek/viafly/mms/smscollect/SMSCollectType;JLjava/lang/String;)V

    goto/16 :goto_0

    .line 188
    .end local v0    # "address":Ljava/lang/String;
    :cond_a
    invoke-interface {p2}, Laat;->g()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Laas;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 191
    :cond_b
    invoke-interface {p2}, Laat;->g()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Laas;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 194
    :cond_c
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 195
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p2}, Laat;->g()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v2, v3}, Laas;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 197
    .end local v1    # "addressList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_d
    const-string/jumbo v2, "payTelFee"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 198
    invoke-static {}, Lgx;->a()Lgx;

    move-result-object v2

    invoke-interface {p2}, Laat;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgx;->a(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/String;Landroid/content/Context;Laas$a;)V
    .locals 4
    .param p1, "queryType"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "listener"    # Laas$a;

    .prologue
    .line 107
    invoke-static {p2}, Lhl;->d(Landroid/content/Context;)I

    move-result v1

    .line 108
    .local v1, "screenWidth":I
    new-instance v2, Lcom/iflytek/viafly/ui/dialog/ListDialog$Builder;

    invoke-direct {v2, p2}, Lcom/iflytek/viafly/ui/dialog/ListDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v3, "\u8bf7\u9009\u62e9\u60a8\u7684\u8fd0\u8425\u5546"

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/ui/dialog/ListDialog$Builder;->setTitle(Ljava/lang/String;)Lcom/iflytek/viafly/ui/dialog/ListDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Laas;->f:[Ljava/lang/String;

    .line 109
    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/ui/dialog/ListDialog$Builder;->setMessage([Ljava/lang/CharSequence;)Lcom/iflytek/viafly/ui/dialog/ListDialog$Builder;

    move-result-object v2

    new-instance v3, Laas$1;

    invoke-direct {v3, p0, p2, p1, p3}, Laas$1;-><init>(Laas;Landroid/content/Context;Ljava/lang/String;Laas$a;)V

    .line 110
    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/ui/dialog/ListDialog$Builder;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)Lcom/iflytek/viafly/ui/dialog/ListDialog$Builder;

    move-result-object v2

    .line 136
    invoke-virtual {v2}, Lcom/iflytek/viafly/ui/dialog/ListDialog$Builder;->create()Lcom/iflytek/viafly/ui/dialog/ListDialog;

    move-result-object v2

    iput-object v2, p0, Laas;->e:Lcom/iflytek/viafly/ui/dialog/ListDialog;

    .line 138
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070192

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    .line 139
    .local v0, "padding":I
    iget-object v2, p0, Laas;->e:Lcom/iflytek/viafly/ui/dialog/ListDialog;

    invoke-virtual {v2}, Lcom/iflytek/viafly/ui/dialog/ListDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    sub-int v3, v1, v0

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 141
    iget-object v2, p0, Laas;->e:Lcom/iflytek/viafly/ui/dialog/ListDialog;

    invoke-virtual {v2}, Lcom/iflytek/viafly/ui/dialog/ListDialog;->show()V

    .line 142
    return-void
.end method

.method public b()Lcom/iflytek/yd/system/SimType;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Laas;->c:Lcom/iflytek/yd/system/SimType;

    return-object v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Laas;->d:Z

    return v0
.end method

.method public d()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 65
    iget-object v5, p0, Laas;->b:Lhy;

    if-eqz v5, :cond_0

    .line 66
    iget-object v5, p0, Laas;->b:Lhy;

    sget-object v6, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {v5, v6}, Lhy;->d(Lcom/iflytek/common/adaptation/entity/SimCard;)Lcom/iflytek/yd/system/SimType;

    move-result-object v0

    .line 67
    .local v0, "first":Lcom/iflytek/yd/system/SimType;
    iget-object v5, p0, Laas;->b:Lhy;

    invoke-virtual {v5}, Lhy;->b()Z

    move-result v1

    .line 68
    .local v1, "isDoubleCard":Z
    if-eqz v1, :cond_7

    .line 69
    iget-object v5, p0, Laas;->b:Lhy;

    sget-object v6, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    .line 70
    invoke-virtual {v5, v6}, Lhy;->d(Lcom/iflytek/common/adaptation/entity/SimCard;)Lcom/iflytek/yd/system/SimType;

    move-result-object v4

    .line 71
    .local v4, "second":Lcom/iflytek/yd/system/SimType;
    iget-object v5, p0, Laas;->b:Lhy;

    sget-object v6, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {v5, v6}, Lhy;->h(Lcom/iflytek/common/adaptation/entity/SimCard;)Z

    move-result v2

    .line 72
    .local v2, "isFirstReady":Z
    iget-object v5, p0, Laas;->b:Lhy;

    sget-object v6, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {v5, v6}, Lhy;->h(Lcom/iflytek/common/adaptation/entity/SimCard;)Z

    move-result v3

    .line 74
    .local v3, "isSecondReady":Z
    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    .line 75
    sget-object v5, Lcom/iflytek/yd/system/SimType;->China_Mobile:Lcom/iflytek/yd/system/SimType;

    invoke-virtual {v5, v0}, Lcom/iflytek/yd/system/SimType;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Lcom/iflytek/yd/system/SimType;->China_Mobile:Lcom/iflytek/yd/system/SimType;

    invoke-virtual {v5, v4}, Lcom/iflytek/yd/system/SimType;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 76
    sget-object v5, Lcom/iflytek/yd/system/SimType;->China_Mobile:Lcom/iflytek/yd/system/SimType;

    iput-object v5, p0, Laas;->c:Lcom/iflytek/yd/system/SimType;

    .line 80
    :goto_0
    iput-boolean v7, p0, Laas;->d:Z

    .line 104
    .end local v0    # "first":Lcom/iflytek/yd/system/SimType;
    .end local v1    # "isDoubleCard":Z
    .end local v2    # "isFirstReady":Z
    .end local v3    # "isSecondReady":Z
    .end local v4    # "second":Lcom/iflytek/yd/system/SimType;
    :cond_0
    :goto_1
    return-void

    .line 78
    .restart local v0    # "first":Lcom/iflytek/yd/system/SimType;
    .restart local v1    # "isDoubleCard":Z
    .restart local v2    # "isFirstReady":Z
    .restart local v3    # "isSecondReady":Z
    .restart local v4    # "second":Lcom/iflytek/yd/system/SimType;
    :cond_1
    sget-object v5, Lcom/iflytek/yd/system/SimType;->Unknown:Lcom/iflytek/yd/system/SimType;

    iput-object v5, p0, Laas;->c:Lcom/iflytek/yd/system/SimType;

    goto :goto_0

    .line 81
    :cond_2
    if-nez v2, :cond_3

    if-eqz v3, :cond_6

    .line 82
    :cond_3
    if-eqz v2, :cond_4

    .line 83
    iput-object v0, p0, Laas;->c:Lcom/iflytek/yd/system/SimType;

    .line 89
    :goto_2
    iput-boolean v7, p0, Laas;->d:Z

    goto :goto_1

    .line 84
    :cond_4
    if-eqz v3, :cond_5

    .line 85
    iput-object v4, p0, Laas;->c:Lcom/iflytek/yd/system/SimType;

    goto :goto_2

    .line 87
    :cond_5
    sget-object v5, Lcom/iflytek/yd/system/SimType;->Unknown:Lcom/iflytek/yd/system/SimType;

    iput-object v5, p0, Laas;->c:Lcom/iflytek/yd/system/SimType;

    goto :goto_2

    .line 91
    :cond_6
    sget-object v5, Lcom/iflytek/yd/system/SimType;->Unknown:Lcom/iflytek/yd/system/SimType;

    iput-object v5, p0, Laas;->c:Lcom/iflytek/yd/system/SimType;

    .line 92
    const/4 v5, 0x0

    iput-boolean v5, p0, Laas;->d:Z

    goto :goto_1

    .line 100
    .end local v2    # "isFirstReady":Z
    .end local v3    # "isSecondReady":Z
    .end local v4    # "second":Lcom/iflytek/yd/system/SimType;
    :cond_7
    iput-object v0, p0, Laas;->c:Lcom/iflytek/yd/system/SimType;

    .line 101
    iget-object v5, p0, Laas;->b:Lhy;

    invoke-virtual {v5}, Lhy;->g()Z

    move-result v5

    iput-boolean v5, p0, Laas;->d:Z

    goto :goto_1
.end method
