.class public Lcom/iflytek/framework/business/components/lxOvsExtComponents;
.super Lcom/iflytek/framework/business/components/AbsComponents;
.source "lxOvsExtComponents.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const-class v0, Lcom/iflytek/framework/business/components/lxOvsExtComponents;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/iflytek/framework/business/components/lxOvsExtComponents;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/iflytek/framework/business/components/AbsComponents;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/framework/business/components/lxOvsExtComponents;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/framework/business/components/lxOvsExtComponents;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/iflytek/framework/business/components/lxOvsExtComponents;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private createRemind(Landroid/content/Context;Lorg/json/JSONArray;)I
    .locals 23
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "jsonArgs"    # Lorg/json/JSONArray;

    .prologue
    .line 271
    sget-object v3, Lcom/iflytek/framework/business/components/lxOvsExtComponents;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "LX TV remind parameter is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const-wide/32 v10, 0x927c0

    .line 273
    .local v10, "TEN_MINUTE":J
    new-instance v20, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd HH:mm:ss"

    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 275
    .local v20, "sDateFormat":Ljava/text/SimpleDateFormat;
    const/4 v3, 0x0

    :try_start_0
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 276
    .local v22, "time":Ljava/lang/String;
    const/4 v3, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 277
    .local v14, "content":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 278
    .local v12, "cTime":J
    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v15

    .line 279
    .local v15, "date":Ljava/util/Date;
    invoke-virtual {v15}, Ljava/util/Date;->getTime()J

    move-result-wide v16

    .line 281
    .local v16, "dTime":J
    sget-object v3, Lcom/iflytek/framework/business/components/lxOvsExtComponents;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "time == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", content == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    sub-long v4, v16, v12

    cmp-long v3, v4, v10

    if-lez v3, :cond_3

    .line 284
    if-eqz v14, :cond_0

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 285
    :cond_0
    const-string/jumbo v14, "\u7075\u7280\u63d0\u9192\u60a8\u6536\u770b\u7535\u89c6\u8282\u76ee"

    .line 288
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    .line 289
    .local v9, "calendar":Ljava/util/Calendar;
    sub-long v4, v16, v10

    invoke-virtual {v9, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 290
    new-instance v18, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;

    invoke-direct/range {v18 .. v18}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;-><init>()V

    .line 291
    .local v18, "datetimeInfo":Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;
    new-instance v2, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;

    const/4 v3, 0x1

    invoke-virtual {v9, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    .line 292
    invoke-virtual {v9, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x5

    .line 293
    invoke-virtual {v9, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/16 v6, 0xb

    .line 294
    invoke-virtual {v9, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/16 v7, 0xc

    .line 295
    invoke-virtual {v9, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-direct/range {v2 .. v7}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;-><init>(IIIII)V

    .line 296
    .local v2, "oneceDate":Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;
    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;->addOnceDate(Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;)Z

    .line 298
    invoke-static {}, Lcom/iflytek/framework/plugin/internal/PluginFactory;->getPluginManager()Lcom/iflytek/framework/plugin/internal/interfaces/IPluginManager;

    move-result-object v3

    const/16 v4, 0x66

    const-class v5, Lcom/iflytek/framework/plugin/internal/interfaces/IBusinessPluginAbility;

    invoke-interface {v3, v4, v5}, Lcom/iflytek/framework/plugin/internal/interfaces/IPluginManager;->getPluginAbility(ILjava/lang/Class;)Lcom/iflytek/yd/plugin/IPluginAbility;

    move-result-object v3

    check-cast v3, Lcom/iflytek/viafly/schedule/SchedulePluginAbility;

    sget-object v5, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;->TV:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    const/4 v8, 0x0

    move-object/from16 v4, p1

    move-object/from16 v6, v18

    move-object v7, v14

    .line 299
    invoke-virtual/range {v3 .. v8}, Lcom/iflytek/viafly/schedule/SchedulePluginAbility;->createSchedule(Landroid/content/Context;Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;Ljava/lang/String;Ljava/lang/String;)I

    move-result v21

    .line 300
    .local v21, "sValue":I
    if-ltz v21, :cond_2

    .line 301
    const-string/jumbo v3, "\u63d0\u9192\u65b0\u5efa\u6210\u529f\uff0c\u8282\u76ee\u5f00\u59cb\u524d10\u5206\u949f\u63d0\u9192\u60a8"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 302
    const/4 v3, 0x0

    .line 313
    .end local v2    # "oneceDate":Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;
    .end local v9    # "calendar":Ljava/util/Calendar;
    .end local v12    # "cTime":J
    .end local v14    # "content":Ljava/lang/String;
    .end local v15    # "date":Ljava/util/Date;
    .end local v16    # "dTime":J
    .end local v18    # "datetimeInfo":Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;
    .end local v21    # "sValue":I
    .end local v22    # "time":Ljava/lang/String;
    :goto_0
    return v3

    .line 304
    .restart local v2    # "oneceDate":Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;
    .restart local v9    # "calendar":Ljava/util/Calendar;
    .restart local v12    # "cTime":J
    .restart local v14    # "content":Ljava/lang/String;
    .restart local v15    # "date":Ljava/util/Date;
    .restart local v16    # "dTime":J
    .restart local v18    # "datetimeInfo":Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;
    .restart local v21    # "sValue":I
    .restart local v22    # "time":Ljava/lang/String;
    :cond_2
    const-string/jumbo v3, "\u63d0\u9192\u65e0\u6548\uff0c\u65b0\u5efa\u63d0\u9192\u5931\u8d25"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 305
    const/4 v3, 0x2

    goto :goto_0

    .line 308
    .end local v2    # "oneceDate":Lcom/iflytek/viafly/schedule/framework/entities/OnceDate;
    .end local v9    # "calendar":Ljava/util/Calendar;
    .end local v18    # "datetimeInfo":Lcom/iflytek/viafly/schedule/framework/entities/OnceDatetimeInfor;
    .end local v21    # "sValue":I
    :cond_3
    const-string/jumbo v3, "\u63d0\u9192\u65e0\u6548\uff0c\u65b0\u5efa\u63d0\u9192\u5931\u8d25"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    const/4 v3, 0x1

    goto :goto_0

    .line 311
    .end local v12    # "cTime":J
    .end local v14    # "content":Ljava/lang/String;
    .end local v15    # "date":Ljava/util/Date;
    .end local v16    # "dTime":J
    .end local v22    # "time":Ljava/lang/String;
    :catch_0
    move-exception v19

    .line 312
    .local v19, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "\u63d0\u9192\u65e0\u6548\uff0c\u65b0\u5efa\u63d0\u9192\u5931\u8d25"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 313
    const/4 v3, 0x2

    goto :goto_0
.end method

.method private getSmsParam(Lcom/iflytek/yd/system/SimType;)Laat;
    .locals 1
    .param p1, "simType"    # Lcom/iflytek/yd/system/SimType;

    .prologue
    .line 255
    sget-object v0, Lcom/iflytek/yd/system/SimType;->China_Mobile:Lcom/iflytek/yd/system/SimType;

    if-ne v0, p1, :cond_0

    .line 256
    invoke-static {}, Laap;->a()Laap;

    move-result-object v0

    .line 262
    :goto_0
    return-object v0

    .line 257
    :cond_0
    sget-object v0, Lcom/iflytek/yd/system/SimType;->China_Telecom:Lcom/iflytek/yd/system/SimType;

    if-ne v0, p1, :cond_1

    .line 258
    invoke-static {}, Laaq;->a()Laaq;

    move-result-object v0

    goto :goto_0

    .line 259
    :cond_1
    sget-object v0, Lcom/iflytek/yd/system/SimType;->China_Unicom:Lcom/iflytek/yd/system/SimType;

    if-ne v0, p1, :cond_2

    .line 260
    invoke-static {}, Laar;->a()Laar;

    move-result-object v0

    goto :goto_0

    .line 262
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onExec(Ljava/lang/String;Lorg/json/JSONArray;)Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;
    .locals 44
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "params"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 70
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v41

    if-eqz v41, :cond_0

    .line 71
    sget-object v41, Lcom/iflytek/framework/business/components/lxOvsExtComponents;->TAG:Ljava/lang/String;

    const-string/jumbo v42, "action is null"

    invoke-static/range {v41 .. v42}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const/16 v41, 0x0

    .line 251
    :goto_0
    return-object v41

    .line 75
    :cond_0
    const-string/jumbo v41, "queryBySms"

    move-object/from16 v0, v41

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_5

    .line 81
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/framework/business/components/lxOvsExtComponents;->mContext:Landroid/content/Context;

    move-object/from16 v41, v0

    const-string/jumbo v42, "android.permission.SEND_SMS"

    invoke-static/range {v41 .. v42}, Lpd;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v41

    if-nez v41, :cond_1

    .line 82
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/framework/business/components/lxOvsExtComponents;->mContext:Landroid/content/Context;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    instance-of v0, v0, Landroid/app/Activity;

    move/from16 v41, v0

    if-eqz v41, :cond_1

    .line 83
    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .local v31, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v41, "android.permission.SEND_SMS"

    move-object/from16 v0, v31

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/framework/business/components/lxOvsExtComponents;->mContext:Landroid/content/Context;

    move-object/from16 v41, v0

    new-instance v42, Lcom/iflytek/framework/business/components/lxOvsExtComponents$1;

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/iflytek/framework/business/components/lxOvsExtComponents$1;-><init>(Lcom/iflytek/framework/business/components/lxOvsExtComponents;)V

    move-object/from16 v0, v41

    move-object/from16 v1, v31

    move-object/from16 v2, v42

    invoke-static {v0, v1, v2}, Lpd;->a(Landroid/content/Context;Ljava/util/List;Lpj;)V

    .line 95
    const/16 v41, 0x0

    goto :goto_0

    .line 99
    .end local v31    # "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    :try_start_0
    invoke-static {}, Laas;->a()Laas;

    move-result-object v34

    .line 100
    .local v34, "simcardHelper":Laas;
    invoke-virtual/range {v34 .. v34}, Laas;->d()V

    .line 101
    invoke-virtual/range {v34 .. v34}, Laas;->b()Lcom/iflytek/yd/system/SimType;

    move-result-object v33

    .line 102
    .local v33, "simType":Lcom/iflytek/yd/system/SimType;
    const/16 v41, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 103
    .local v32, "queryType":Ljava/lang/String;
    invoke-virtual/range {v34 .. v34}, Laas;->c()Z

    move-result v41

    if-eqz v41, :cond_4

    .line 104
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/iflytek/framework/business/components/lxOvsExtComponents;->getSmsParam(Lcom/iflytek/yd/system/SimType;)Laat;

    move-result-object v41

    if-eqz v41, :cond_3

    .line 105
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/framework/business/components/lxOvsExtComponents;->getContext()Landroid/content/Context;

    move-result-object v41

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/iflytek/framework/business/components/lxOvsExtComponents;->getSmsParam(Lcom/iflytek/yd/system/SimType;)Laat;

    move-result-object v42

    const/16 v43, 0x1

    move-object/from16 v0, v34

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    move-object/from16 v3, v32

    move/from16 v4, v43

    invoke-virtual {v0, v1, v2, v3, v4}, Laas;->a(Landroid/content/Context;Laat;Ljava/lang/String;Z)V

    .line 110
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/framework/business/components/lxOvsExtComponents;->getContext()Landroid/content/Context;

    move-result-object v41

    const-string/jumbo v42, "\u6b63\u5728\u4e3a\u60a8\u53d1\u9001\u514d\u8d39\u77ed\u4fe1\uff0c\u8bf7\u6ce8\u610f\u67e5\u6536"

    const/16 v43, 0x1

    invoke-static/range {v41 .. v43}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/widget/Toast;->show()V

    .line 251
    .end local v32    # "queryType":Ljava/lang/String;
    .end local v33    # "simType":Lcom/iflytek/yd/system/SimType;
    .end local v34    # "simcardHelper":Laas;
    :cond_2
    :goto_1
    const/16 v41, 0x0

    goto/16 :goto_0

    .line 112
    .restart local v32    # "queryType":Ljava/lang/String;
    .restart local v33    # "simType":Lcom/iflytek/yd/system/SimType;
    .restart local v34    # "simcardHelper":Laas;
    :cond_3
    invoke-static {}, Laas;->a()Laas;

    move-result-object v41

    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/framework/business/components/lxOvsExtComponents;->getContext()Landroid/content/Context;

    move-result-object v42

    new-instance v43, Lcom/iflytek/framework/business/components/lxOvsExtComponents$2;

    invoke-direct/range {v43 .. v44}, Lcom/iflytek/framework/business/components/lxOvsExtComponents$2;-><init>(Lcom/iflytek/framework/business/components/lxOvsExtComponents;)V

    move-object/from16 v0, v41

    move-object/from16 v1, v32

    move-object/from16 v2, v42

    move-object/from16 v3, v43

    invoke-virtual {v0, v1, v2, v3}, Laas;->a(Ljava/lang/String;Landroid/content/Context;Laas$a;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 127
    .end local v32    # "queryType":Ljava/lang/String;
    .end local v33    # "simType":Lcom/iflytek/yd/system/SimType;
    .end local v34    # "simcardHelper":Laas;
    :catch_0
    move-exception v18

    .line 128
    .local v18, "e":Lorg/json/JSONException;
    sget-object v41, Lcom/iflytek/framework/business/components/lxOvsExtComponents;->TAG:Ljava/lang/String;

    const-string/jumbo v42, "action failed"

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 124
    .end local v18    # "e":Lorg/json/JSONException;
    .restart local v32    # "queryType":Ljava/lang/String;
    .restart local v33    # "simType":Lcom/iflytek/yd/system/SimType;
    .restart local v34    # "simcardHelper":Laas;
    :cond_4
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/framework/business/components/lxOvsExtComponents;->getContext()Landroid/content/Context;

    move-result-object v41

    const-string/jumbo v42, "\u672a\u68c0\u6d4b\u5230\u53ef\u7528SIM\u5361"

    const/16 v43, 0x0

    invoke-static/range {v41 .. v43}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 130
    .end local v32    # "queryType":Ljava/lang/String;
    .end local v33    # "simType":Lcom/iflytek/yd/system/SimType;
    .end local v34    # "simcardHelper":Laas;
    :cond_5
    const-string/jumbo v41, "querySimType"

    move-object/from16 v0, v41

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_7

    .line 131
    sget-object v41, Lcom/iflytek/common/adaptation/entity/SimCard;->auto:Lcom/iflytek/common/adaptation/entity/SimCard;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/framework/business/components/lxOvsExtComponents;->mContext:Landroid/content/Context;

    move-object/from16 v42, v0

    .line 132
    invoke-static/range {v41 .. v42}, Lmz;->a(Lcom/iflytek/common/adaptation/entity/SimCard;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v41

    .line 131
    invoke-static/range {v41 .. v41}, Lmz;->b(Ljava/lang/String;)Lcom/iflytek/common/cmccauth/entities/SimOperatorType;

    move-result-object v38

    .line 133
    .local v38, "type":Lcom/iflytek/common/cmccauth/entities/SimOperatorType;
    if-nez v38, :cond_6

    .line 134
    sget-object v38, Lcom/iflytek/common/cmccauth/entities/SimOperatorType;->UNKOWN:Lcom/iflytek/common/cmccauth/entities/SimOperatorType;

    .line 136
    :cond_6
    new-instance v41, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v42, "OK"

    invoke-virtual/range {v38 .. v38}, Lcom/iflytek/common/cmccauth/entities/SimOperatorType;->name()Ljava/lang/String;

    move-result-object v43

    invoke-direct/range {v41 .. v43}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 137
    .end local v38    # "type":Lcom/iflytek/common/cmccauth/entities/SimOperatorType;
    :cond_7
    const-string/jumbo v41, "getCurrentIMSI"

    move-object/from16 v0, v41

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_8

    .line 138
    sget-object v41, Lcom/iflytek/common/adaptation/entity/SimCard;->auto:Lcom/iflytek/common/adaptation/entity/SimCard;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/framework/business/components/lxOvsExtComponents;->mContext:Landroid/content/Context;

    move-object/from16 v42, v0

    invoke-static/range {v41 .. v42}, Lmz;->a(Lcom/iflytek/common/adaptation/entity/SimCard;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v23

    .line 139
    .local v23, "imsi":Ljava/lang/String;
    new-instance v41, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v42, "OK"

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 140
    .end local v23    # "imsi":Ljava/lang/String;
    :cond_8
    const-string/jumbo v41, "getTokenByIMSI"

    move-object/from16 v0, v41

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_a

    .line 141
    const/16 v41, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 142
    .restart local v23    # "imsi":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/framework/business/components/lxOvsExtComponents;->mContext:Landroid/content/Context;

    move-object/from16 v41, v0

    .line 143
    invoke-static/range {v41 .. v41}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Landroid/content/Context;)Lcom/iflytek/common/cmccauth/CmccAuthentication;

    move-result-object v41

    sget-object v42, Lcom/iflytek/common/adaptation/entity/SimCard;->auto:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual/range {v41 .. v42}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->c(Lcom/iflytek/common/adaptation/entity/SimCard;)Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    move-result-object v24

    .line 144
    .local v24, "info":Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;
    new-instance v35, Lorg/json/JSONObject;

    invoke-direct/range {v35 .. v35}, Lorg/json/JSONObject;-><init>()V

    .line 145
    .local v35, "token":Lorg/json/JSONObject;
    const-string/jumbo v41, "tokenId"

    const-string/jumbo v42, ""

    move-object/from16 v0, v35

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 146
    if-eqz v24, :cond_9

    invoke-virtual/range {v24 .. v24}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->getImsi()Ljava/lang/String;

    move-result-object v41

    if-eqz v41, :cond_9

    invoke-virtual/range {v24 .. v24}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->getImsi()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_9

    .line 147
    const-string/jumbo v41, "tokenId"

    invoke-virtual/range {v24 .. v24}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->getTokenId()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v35

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 148
    const-string/jumbo v41, "randomCode"

    invoke-virtual/range {v24 .. v24}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->getRandomCode()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v35

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 149
    const-string/jumbo v41, "imsi"

    invoke-virtual/range {v24 .. v24}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->getImsi()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v35

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 150
    const-string/jumbo v41, "inValidTime"

    invoke-virtual/range {v24 .. v24}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->getInvalidTime()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v35

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 151
    const-string/jumbo v41, "validDays"

    invoke-virtual/range {v24 .. v24}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->getValidDays()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v35

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 153
    :cond_9
    new-instance v41, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v42, "OK"

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    move-object/from16 v2, v35

    invoke-direct {v0, v1, v2}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 154
    .end local v23    # "imsi":Ljava/lang/String;
    .end local v24    # "info":Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;
    .end local v35    # "token":Lorg/json/JSONObject;
    :cond_a
    const-string/jumbo v41, "addOvsTvRemind"

    move-object/from16 v0, v41

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_b

    .line 155
    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    .line 156
    .local v19, "extraParam":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v41, "business_mix_focus"

    const-string/jumbo v42, "dialog"

    move-object/from16 v0, v19

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const-string/jumbo v41, "business_mix_sub_focus"

    const-string/jumbo v42, "va_cqa_ovs_qa_epg"

    move-object/from16 v0, v19

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const-string/jumbo v41, "business_mix_extra_focus"

    const-string/jumbo v42, "schedule"

    move-object/from16 v0, v19

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/framework/business/components/lxOvsExtComponents;->mContext:Landroid/content/Context;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lxc;->a(Landroid/content/Context;)Lxc;

    move-result-object v41

    const-string/jumbo v42, "FD44002"

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lxc;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 161
    sget-object v41, Lcom/iflytek/framework/business/components/lxOvsExtComponents;->TAG:Ljava/lang/String;

    const-string/jumbo v42, "append OPERATION_CLICK_BUSINESS_MIX OpLog, opCode == FD44002 , focus == dialog"

    invoke-static/range {v41 .. v42}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/framework/business/components/lxOvsExtComponents;->mContext:Landroid/content/Context;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/iflytek/framework/business/components/lxOvsExtComponents;->createRemind(Landroid/content/Context;Lorg/json/JSONArray;)I

    move-result v29

    .line 166
    .local v29, "message":I
    new-instance v41, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v42, "OK"

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 167
    .end local v19    # "extraParam":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v29    # "message":I
    :cond_b
    const-string/jumbo v41, "notifyCallfeesAndFlowDataChanged"

    move-object/from16 v0, v41

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_2

    .line 168
    const/16 v41, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 169
    .local v27, "jsonStr":Ljava/lang/String;
    new-instance v26, Lorg/json/JSONObject;

    invoke-direct/range {v26 .. v27}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 170
    .local v26, "json":Lorg/json/JSONObject;
    const-string/jumbo v41, "content"

    move-object/from16 v0, v26

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    .line 171
    .local v13, "content":Lorg/json/JSONObject;
    if-eqz v13, :cond_2

    .line 172
    new-instance v37, Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;

    invoke-direct/range {v37 .. v37}, Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;-><init>()V

    .line 173
    .local v37, "trafficInfo":Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;
    new-instance v9, Lcom/iflytek/viafly/smartschedule/expensestraffic/bill/BillInfo;

    invoke-direct {v9}, Lcom/iflytek/viafly/smartschedule/expensestraffic/bill/BillInfo;-><init>()V

    .line 174
    .local v9, "billInfo":Lcom/iflytek/viafly/smartschedule/expensestraffic/bill/BillInfo;
    const/4 v12, 0x0

    .line 175
    .local v12, "callfees":Ljava/lang/String;
    const/16 v20, 0x0

    .line 176
    .local v20, "flow":Ljava/lang/String;
    const/16 v39, 0x0

    .line 177
    .local v39, "url":Ljava/lang/String;
    const/4 v10, 0x0

    .line 178
    .local v10, "billUrl":Ljava/lang/String;
    const/16 v22, 0x0

    .line 179
    .local v22, "gprsUrl":Ljava/lang/String;
    const/4 v7, 0x0

    .line 180
    .local v7, "balance":Ljava/lang/String;
    const/16 v40, 0x0

    .line 181
    .local v40, "used":Ljava/lang/String;
    const/16 v28, 0x0

    .line 182
    .local v28, "left":Ljava/lang/String;
    const/16 v36, 0x0

    .line 183
    .local v36, "total":Ljava/lang/String;
    const/4 v11, 0x0

    .line 185
    .local v11, "caller":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 186
    .local v16, "currentTime":J
    sget-object v41, Lcom/iflytek/framework/business/components/lxOvsExtComponents;->TAG:Ljava/lang/String;

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v43, "updatetime-------- "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    move-wide/from16 v0, v16

    iput-wide v0, v9, Lcom/iflytek/viafly/smartschedule/expensestraffic/bill/BillInfo;->mUpdateTime:J

    .line 188
    move-object/from16 v0, v37

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;->setUpdateTime(J)V

    .line 189
    const-string/jumbo v41, "bill"

    move-object/from16 v0, v41

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 190
    .local v8, "bill":Lorg/json/JSONObject;
    if-eqz v8, :cond_e

    .line 191
    const-string/jumbo v41, "balance"

    move-object/from16 v0, v41

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 192
    const-string/jumbo v41, "used"

    move-object/from16 v0, v41

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 193
    const-string/jumbo v41, "url"

    move-object/from16 v0, v41

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 194
    sget-object v41, Lcom/iflytek/framework/business/components/lxOvsExtComponents;->TAG:Ljava/lang/String;

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v43, "bill--------balance = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string/jumbo v43, " ; used = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string/jumbo v43, " ; billUrl = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    if-eqz v40, :cond_c

    const-string/jumbo v41, ""

    move-object/from16 v0, v41

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_c

    .line 196
    invoke-static/range {v40 .. v40}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v41

    move/from16 v0, v41

    iput v0, v9, Lcom/iflytek/viafly/smartschedule/expensestraffic/bill/BillInfo;->mUsedBill:F

    .line 198
    :cond_c
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v41

    move/from16 v0, v41

    iput v0, v9, Lcom/iflytek/viafly/smartschedule/expensestraffic/bill/BillInfo;->mLeftBill:F

    .line 199
    iput-object v10, v9, Lcom/iflytek/viafly/smartschedule/expensestraffic/bill/BillInfo;->mDetailUrl:Ljava/lang/String;

    .line 200
    if-eqz v7, :cond_d

    .line 201
    invoke-static {v7}, Lzr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 203
    :cond_d
    sget-object v41, Lcom/iflytek/framework/business/components/lxOvsExtComponents;->TAG:Ljava/lang/String;

    const-string/jumbo v42, "bill--------end "

    invoke-static/range {v41 .. v42}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_e
    const-string/jumbo v41, "gprs"

    move-object/from16 v0, v41

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v21

    .line 206
    .local v21, "gprs":Lorg/json/JSONObject;
    if-eqz v21, :cond_10

    .line 207
    sget-object v41, Lcom/iflytek/framework/business/components/lxOvsExtComponents;->TAG:Ljava/lang/String;

    const-string/jumbo v42, "gprs not null"

    invoke-static/range {v41 .. v42}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    const-string/jumbo v41, "left"

    move-object/from16 v0, v21

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 209
    const-string/jumbo v41, "total"

    move-object/from16 v0, v21

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 210
    const-string/jumbo v41, "url"

    move-object/from16 v0, v21

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 211
    sget-object v41, Lcom/iflytek/framework/business/components/lxOvsExtComponents;->TAG:Ljava/lang/String;

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v43, "gprs-----------------left = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string/jumbo v43, " ; total = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string/jumbo v43, " ; gprsUrl = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-static/range {v28 .. v28}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v41

    move-object/from16 v0, v37

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;->setLeftTraffic(F)V

    .line 213
    if-eqz v36, :cond_f

    const-string/jumbo v41, ""

    move-object/from16 v0, v41

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_f

    .line 214
    invoke-static/range {v36 .. v36}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v41

    move-object/from16 v0, v37

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;->setTotalTraffic(F)V

    .line 216
    :cond_f
    move-object/from16 v0, v37

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;->setDetailUrl(Ljava/lang/String;)V

    .line 217
    if-eqz v28, :cond_10

    .line 218
    invoke-static/range {v28 .. v28}, Lzr;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 221
    :cond_10
    const-string/jumbo v41, "caller"

    move-object/from16 v0, v41

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 222
    if-eqz v11, :cond_11

    const-string/jumbo v41, ""

    move-object/from16 v0, v41

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_11

    .line 223
    sget-object v41, Lcom/iflytek/framework/business/components/lxOvsExtComponents;->TAG:Ljava/lang/String;

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v43, "gprs-----------------caller = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    move-object/from16 v0, v37

    invoke-virtual {v0, v11}, Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;->setPhoneNum(Ljava/lang/String;)V

    .line 225
    iput-object v11, v9, Lcom/iflytek/viafly/smartschedule/expensestraffic/bill/BillInfo;->mPhoneNum:Ljava/lang/String;

    .line 227
    :cond_11
    sget-object v41, Lcom/iflytek/common/adaptation/entity/SimCard;->auto:Lcom/iflytek/common/adaptation/entity/SimCard;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/framework/business/components/lxOvsExtComponents;->mContext:Landroid/content/Context;

    move-object/from16 v42, v0

    invoke-static/range {v41 .. v42}, Lmz;->a(Lcom/iflytek/common/adaptation/entity/SimCard;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v37

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;->setImsi(Ljava/lang/String;)V

    .line 228
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/TrafficDataAPIReader;->getAllGPRSTraffic()J

    move-result-wide v14

    .line 231
    .local v14, "currentReadTraffic":J
    invoke-static {}, Lhl;->k()I

    move-result v41

    const/16 v42, 0x13

    move/from16 v0, v41

    move/from16 v1, v42

    if-lt v0, v1, :cond_12

    .line 232
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/NotificationCardUpdateHelper;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/NotificationCardUpdateHelper;

    move-result-object v41

    sget-object v42, Lcom/iflytek/viafly/smartschedule/traffic/TrafficWarnTriggerSource;->notification:Lcom/iflytek/viafly/smartschedule/traffic/TrafficWarnTriggerSource;

    move-object/from16 v0, v41

    move-object/from16 v1, v37

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/viafly/smartschedule/traffic/NotificationCardUpdateHelper;->updateTrafficInfo(Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;Lcom/iflytek/viafly/smartschedule/traffic/TrafficWarnTriggerSource;)V

    .line 234
    :cond_12
    const-string/jumbo v41, "bottomButton"

    move-object/from16 v0, v41

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 235
    .local v6, "array":Lorg/json/JSONArray;
    if-eqz v6, :cond_13

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v41

    if-lez v41, :cond_13

    .line 236
    const/16 v41, 0x0

    move/from16 v0, v41

    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v30

    .line 237
    .local v30, "obj":Lorg/json/JSONObject;
    const-string/jumbo v41, "url"

    move-object/from16 v0, v30

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 240
    .end local v30    # "obj":Lorg/json/JSONObject;
    :cond_13
    if-nez v12, :cond_14

    if-eqz v20, :cond_2

    :cond_14
    if-eqz v39, :cond_2

    .line 241
    new-instance v25, Landroid/content/Intent;

    const-string/jumbo v41, "com.iflytek.viafly.cafnotification.ACTION_RECEIVE_CAF_DATA_FROM_CARD"

    move-object/from16 v0, v25

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 242
    .local v25, "intent":Landroid/content/Intent;
    const-string/jumbo v41, "callfees"

    move-object/from16 v0, v25

    move-object/from16 v1, v41

    invoke-virtual {v0, v1, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    const-string/jumbo v41, "flow"

    move-object/from16 v0, v25

    move-object/from16 v1, v41

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 244
    const-string/jumbo v41, "update_time_in_millis"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v42

    move-object/from16 v0, v25

    move-object/from16 v1, v41

    move-wide/from16 v2, v42

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 245
    const-string/jumbo v41, "url"

    move-object/from16 v0, v25

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/framework/business/components/lxOvsExtComponents;->mContext:Landroid/content/Context;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1
.end method

.method protected onInit(Landroid/content/Context;Lcom/iflytek/mmp/core/webcore/BrowserCore;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "browserCore"    # Lcom/iflytek/mmp/core/webcore/BrowserCore;

    .prologue
    .line 267
    iput-object p1, p0, Lcom/iflytek/framework/business/components/lxOvsExtComponents;->mContext:Landroid/content/Context;

    .line 268
    return-void
.end method
