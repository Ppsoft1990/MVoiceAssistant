.class public Lade;
.super Ljava/lang/Object;
.source "WidgetSmsInputView.java"

# interfaces
.implements Laov$a;
.implements Lcom/iflytek/framework/ui/DisplayComponent;
.implements Lcom/iflytek/mmp/core/componentsManager/Components;
.implements Lqu;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lade$a;
    }
.end annotation


# static fields
.field private static S:[Ljava/lang/String;

.field private static final p:Ljava/lang/String;


# instance fields
.field private A:Z

.field private B:Lcom/iflytek/base/contacts/entities/ContactInfo;

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private F:Ljava/lang/String;

.field private G:Z

.field private H:Z

.field private I:Z

.field private J:B

.field private K:Lcom/iflytek/yd/speech/ISpeechHandler;

.field private L:Lapa;

.field private M:Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog;

.field private N:Z

.field private O:Lade$a;

.field private P:Lacr;

.field private Q:Lafu;

.field private R:Landroid/os/Handler;

.field private T:Landroid/content/BroadcastReceiver;

.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Z

.field public e:Lorg/json/JSONArray;

.field public f:Z

.field public g:Z

.field public h:Ljava/lang/String;

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Lcom/iflytek/common/adaptation/entity/SimCard;

.field public n:Z

.field public o:Lorg/json/JSONArray;

.field private q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/base/contacts/entities/ContactItem;",
            ">;"
        }
    .end annotation
.end field

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Lcom/iflytek/common/adaptation/entity/SimCard;

.field private x:Z

.field private y:Lcom/iflytek/framework/business/entities/HandleContext;

.field private z:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 105
    const-class v0, Lade;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lade;->p:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lacp;Lacr;Ljava/util/List;Ljava/util/HashSet;ZBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/common/adaptation/entity/SimCard;Z)V
    .locals 4
    .param p1, "pBusinessHandler"    # Lacp;
    .param p2, "pMessageHanlderListener"    # Lacr;
    .param p5, "pIsAllNameState"    # Z
    .param p6, "pTextSearchMode"    # B
    .param p7, "pSmsContent"    # Ljava/lang/String;
    .param p8, "pSMSContentType"    # Ljava/lang/String;
    .param p9, "pSMSContentFrom"    # Ljava/lang/String;
    .param p10, "pSMSContentId"    # Ljava/lang/String;
    .param p11, "pSMSBlessId"    # Ljava/lang/String;
    .param p12, "pSimCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;
    .param p13, "pIsReceiverCardFlag"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lacp;",
            "Lacr;",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/base/contacts/entities/ContactItem;",
            ">;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;ZB",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/iflytek/common/adaptation/entity/SimCard;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 265
    .local p3, "contactItems":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/base/contacts/entities/ContactItem;>;"
    .local p4, "nameList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    const-string/jumbo v1, ""

    iput-object v1, p0, Lade;->t:Ljava/lang/String;

    .line 115
    const-string/jumbo v1, ""

    iput-object v1, p0, Lade;->u:Ljava/lang/String;

    .line 116
    const-string/jumbo v1, ""

    iput-object v1, p0, Lade;->v:Ljava/lang/String;

    .line 117
    sget-object v1, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    iput-object v1, p0, Lade;->w:Lcom/iflytek/common/adaptation/entity/SimCard;

    .line 118
    const/4 v1, 0x0

    iput-boolean v1, p0, Lade;->x:Z

    .line 121
    const/4 v1, 0x0

    iput-boolean v1, p0, Lade;->A:Z

    .line 123
    const/4 v1, 0x0

    iput-object v1, p0, Lade;->C:Ljava/lang/String;

    .line 124
    const-string/jumbo v1, ""

    iput-object v1, p0, Lade;->D:Ljava/lang/String;

    .line 125
    const-string/jumbo v1, ""

    iput-object v1, p0, Lade;->E:Ljava/lang/String;

    .line 126
    const-string/jumbo v1, ""

    iput-object v1, p0, Lade;->F:Ljava/lang/String;

    .line 127
    const/4 v1, 0x0

    iput-boolean v1, p0, Lade;->G:Z

    .line 129
    const/4 v1, 0x0

    iput-boolean v1, p0, Lade;->H:Z

    .line 130
    const/4 v1, 0x0

    iput-boolean v1, p0, Lade;->I:Z

    .line 138
    const/4 v1, 0x0

    iput-boolean v1, p0, Lade;->N:Z

    .line 205
    new-instance v1, Lade$2;

    invoke-direct {v1, p0}, Lade$2;-><init>(Lade;)V

    iput-object v1, p0, Lade;->R:Landroid/os/Handler;

    .line 1314
    new-instance v1, Lade$5;

    invoke-direct {v1, p0}, Lade$5;-><init>(Lade;)V

    iput-object v1, p0, Lade;->T:Landroid/content/BroadcastReceiver;

    .line 267
    invoke-interface {p1}, Lacp;->getDialContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lade;->z:Landroid/content/Context;

    .line 268
    invoke-interface {p1}, Lacp;->getHandlerContext()Lcom/iflytek/framework/business/entities/HandleContext;

    move-result-object v1

    iput-object v1, p0, Lade;->y:Lcom/iflytek/framework/business/entities/HandleContext;

    .line 269
    iput-object p2, p0, Lade;->P:Lacr;

    .line 270
    iput-object p8, p0, Lade;->t:Ljava/lang/String;

    .line 271
    iput-object p10, p0, Lade;->u:Ljava/lang/String;

    .line 272
    iput-object p9, p0, Lade;->v:Ljava/lang/String;

    .line 273
    move-object/from16 v0, p12

    iput-object v0, p0, Lade;->w:Lcom/iflytek/common/adaptation/entity/SimCard;

    .line 274
    move/from16 v0, p13

    iput-boolean v0, p0, Lade;->x:Z

    .line 276
    invoke-direct {p0}, Lade;->k()V

    .line 278
    invoke-static {p8}, Lacw;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 285
    iget-object v1, p0, Lade;->z:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Labk;->a(Landroid/content/Context;)Labk;

    .line 286
    invoke-static {}, Labk;->a()Labk;

    move-result-object v1

    const-string/jumbo v2, "10"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p8, p10, v3}, Labk;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)J

    .line 288
    :cond_0
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo p7, ""

    .end local p7    # "pSmsContent":Ljava/lang/String;
    :cond_1
    iput-object p7, p0, Lade;->s:Ljava/lang/String;

    .line 289
    iget-object v1, p0, Lade;->s:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p0, p3, p4, v1, v2}, Lade;->a(Ljava/util/List;Ljava/util/HashSet;Ljava/lang/String;Z)V

    .line 291
    iget-object v1, p0, Lade;->z:Landroid/content/Context;

    invoke-static {v1}, Lade;->a(Landroid/content/Context;)V

    .line 292
    iput-boolean p5, p0, Lade;->H:Z

    .line 293
    iput-byte p6, p0, Lade;->J:B

    .line 295
    invoke-static {}, Lapa;->a()V

    .line 296
    iget-object v1, p0, Lade;->z:Landroid/content/Context;

    invoke-static {v1}, Lcom/iflytek/framework/business/speech/SpeechHandlerFactory;->newInstance(Landroid/content/Context;)Lcom/iflytek/yd/speech/ISpeechHandler;

    move-result-object v1

    iput-object v1, p0, Lade;->K:Lcom/iflytek/yd/speech/ISpeechHandler;

    .line 298
    return-void
.end method

.method static synthetic a(Lade;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lade;

    .prologue
    .line 102
    iget-object v0, p0, Lade;->R:Landroid/os/Handler;

    return-object v0
.end method

.method protected static a(Landroid/content/Context;J)Lcom/iflytek/base/contacts/entities/ContactSet;
    .locals 21
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # J

    .prologue
    .line 1214
    const/4 v11, 0x0

    .line 1215
    .local v11, "cursor":Landroid/database/Cursor;
    const/4 v14, 0x0

    .line 1216
    .local v14, "number":Ljava/lang/String;
    const/4 v15, 0x0

    .line 1217
    .local v15, "numberType":Ljava/lang/String;
    const/16 v18, 0x0

    .line 1218
    .local v18, "type":I
    const/4 v9, 0x0

    .line 1219
    .local v9, "contactSet":Lcom/iflytek/base/contacts/entities/ContactSet;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 1220
    .local v16, "tmpNumberList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    .line 1221
    .local v17, "tmpNumberTypeHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x4

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "contact_id"

    aput-object v4, v5, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "display_name"

    aput-object v4, v5, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "data1"

    aput-object v4, v5, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "data2"

    aput-object v4, v5, v3

    .line 1228
    .local v5, "projection":[Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static/range {p0 .. p0}, Lhe;->a(Landroid/content/Context;)Lhe;

    move-result-object v4

    invoke-virtual {v4}, Lhe;->c()Landroid/net/Uri;

    move-result-object v4

    const-string/jumbo v6, "contact_id = ?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v7, v8

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1231
    if-nez v11, :cond_2

    .line 1232
    sget-object v3, Lade;->p:Ljava/lang/String;

    const-string/jumbo v4, "queryContactSet ----------------cursor is null"

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1261
    if-eqz v11, :cond_0

    .line 1262
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v10, v9

    :cond_1
    :goto_0
    return-object v10

    .line 1234
    :cond_2
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_4

    .line 1235
    sget-object v3, Lade;->p:Ljava/lang/String;

    const-string/jumbo v4, "queryContactSet ----------------cursor size is 0"

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1261
    if-eqz v11, :cond_3

    .line 1262
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v10, v9

    goto :goto_0

    .line 1239
    :cond_4
    :try_start_2
    const-string/jumbo v13, ""

    .line 1240
    .local v13, "name":Ljava/lang/String;
    :cond_5
    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1241
    const/4 v3, 0x1

    aget-object v3, v5, v3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1242
    const/4 v3, 0x2

    aget-object v3, v5, v3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/iflytek/viafly/util/PhoneNumberUtil;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1245
    const/4 v3, 0x3

    aget-object v3, v5, v3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 1246
    sget-object v3, Lade;->S:[Ljava/lang/String;

    aget-object v15, v3, v18

    .line 1247
    const-string/jumbo v3, ""

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1248
    move-object/from16 v0, v17

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1249
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1257
    .end local v13    # "name":Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 1258
    .local v12, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    sget-object v3, Lade;->p:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1259
    const/4 v10, 0x0

    .line 1261
    if-eqz v11, :cond_1

    .line 1262
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1252
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v13    # "name":Ljava/lang/String;
    :cond_6
    :try_start_4
    new-instance v10, Lcom/iflytek/base/contacts/entities/ContactSet;

    const-string/jumbo v3, ""

    invoke-direct {v10, v13, v3}, Lcom/iflytek/base/contacts/entities/ContactSet;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1253
    .end local v9    # "contactSet":Lcom/iflytek/base/contacts/entities/ContactSet;
    .local v10, "contactSet":Lcom/iflytek/base/contacts/entities/ContactSet;
    :try_start_5
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Lcom/iflytek/base/contacts/entities/ContactSet;->setNumbers(Ljava/util/ArrayList;)V

    .line 1254
    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/iflytek/base/contacts/entities/ContactSet;->setNumberTypeHashMap(Ljava/util/HashMap;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1261
    if-eqz v11, :cond_7

    .line 1262
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_7
    move-object v9, v10

    .end local v10    # "contactSet":Lcom/iflytek/base/contacts/entities/ContactSet;
    .restart local v9    # "contactSet":Lcom/iflytek/base/contacts/entities/ContactSet;
    goto/16 :goto_0

    .line 1261
    .end local v13    # "name":Ljava/lang/String;
    :catchall_0
    move-exception v3

    :goto_3
    if-eqz v11, :cond_8

    .line 1262
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v3

    .line 1261
    .end local v9    # "contactSet":Lcom/iflytek/base/contacts/entities/ContactSet;
    .restart local v10    # "contactSet":Lcom/iflytek/base/contacts/entities/ContactSet;
    .restart local v13    # "name":Ljava/lang/String;
    :catchall_1
    move-exception v3

    move-object v9, v10

    .end local v10    # "contactSet":Lcom/iflytek/base/contacts/entities/ContactSet;
    .restart local v9    # "contactSet":Lcom/iflytek/base/contacts/entities/ContactSet;
    goto :goto_3

    .line 1257
    .end local v9    # "contactSet":Lcom/iflytek/base/contacts/entities/ContactSet;
    .restart local v10    # "contactSet":Lcom/iflytek/base/contacts/entities/ContactSet;
    :catch_1
    move-exception v12

    move-object v9, v10

    .end local v10    # "contactSet":Lcom/iflytek/base/contacts/entities/ContactSet;
    .restart local v9    # "contactSet":Lcom/iflytek/base/contacts/entities/ContactSet;
    goto :goto_2
.end method

.method static synthetic a(Lade;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lade;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 102
    iput-object p1, p0, Lade;->E:Ljava/lang/String;

    return-object p1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/base/contacts/entities/ContactItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1169
    if-nez p1, :cond_1

    .line 1194
    :cond_0
    :goto_0
    return-object v3

    .line 1172
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1173
    .local v4, "nameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1174
    invoke-static {p0}, Lhe;->a(Landroid/content/Context;)Lhe;

    move-result-object v7

    invoke-virtual {v7, v8, v4}, Lhe;->a(ZLjava/util/List;)Ljava/util/ArrayList;

    move-result-object v6

    .line 1175
    .local v6, "smsContactSets":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/base/contacts/entities/ContactSet;>;"
    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 1176
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/contacts/entities/ContactSet;

    .line 1178
    .local v0, "contactSet":Lcom/iflytek/base/contacts/entities/ContactSet;
    invoke-virtual {v0}, Lcom/iflytek/base/contacts/entities/ContactSet;->getNumbers()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v9, v7, :cond_2

    .line 1179
    new-instance v2, Lcom/iflytek/base/contacts/entities/ContactItem;

    invoke-direct {v2}, Lcom/iflytek/base/contacts/entities/ContactItem;-><init>()V

    .line 1180
    .local v2, "item":Lcom/iflytek/base/contacts/entities/ContactItem;
    invoke-virtual {v2, p1}, Lcom/iflytek/base/contacts/entities/ContactItem;->b(Ljava/lang/String;)V

    .line 1181
    invoke-virtual {v0}, Lcom/iflytek/base/contacts/entities/ContactSet;->getNumbers()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v2, v7}, Lcom/iflytek/base/contacts/entities/ContactItem;->c(Ljava/lang/String;)V

    .line 1182
    const-string/jumbo v7, ""

    invoke-virtual {v2, v7}, Lcom/iflytek/base/contacts/entities/ContactItem;->f(Ljava/lang/String;)V

    .line 1183
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1184
    .local v3, "items":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/base/contacts/entities/ContactItem;>;"
    goto :goto_0

    .line 1186
    .end local v2    # "item":Lcom/iflytek/base/contacts/entities/ContactItem;
    .end local v3    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/base/contacts/entities/ContactItem;>;"
    :cond_2
    new-instance v1, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;-><init>(Landroid/content/Context;)V

    .line 1187
    .local v1, "helper":Lcom/iflytek/viafly/contacts/ContactInteractionHelper;
    const-string/jumbo v7, "message"

    .line 1189
    invoke-virtual {v1, v0}, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->c(Lcom/iflytek/base/contacts/entities/ContactSet;)Ljava/util/List;

    move-result-object v8

    .line 1187
    invoke-virtual {v1, v7, p1, v9, v8}, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V

    .line 1191
    invoke-virtual {v1}, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a()Laaw;

    move-result-object v5

    .line 1192
    .local v5, "result":Laaw;
    invoke-virtual {v5}, Laaw;->a()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v1, p1, v7}, Lcom/iflytek/viafly/contacts/ContactInteractionHelper;->a(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    goto :goto_0
.end method

.method protected static a(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const v4, 0x7f0c0152

    .line 1198
    const/16 v1, 0x64

    new-array v1, v1, [Ljava/lang/String;

    sput-object v1, Lade;->S:[Ljava/lang/String;

    .line 1199
    sget-object v1, Lade;->S:[Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1200
    sget-object v1, Lade;->S:[Ljava/lang/String;

    const/4 v2, 0x1

    const v3, 0x7f0c014f

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1201
    sget-object v1, Lade;->S:[Ljava/lang/String;

    const/4 v2, 0x2

    const v3, 0x7f0c0151

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1202
    sget-object v1, Lade;->S:[Ljava/lang/String;

    const/4 v2, 0x3

    const v3, 0x7f0c0154

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1203
    sget-object v1, Lade;->S:[Ljava/lang/String;

    const/4 v2, 0x4

    const v3, 0x7f0c0155

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1204
    sget-object v1, Lade;->S:[Ljava/lang/String;

    const/4 v2, 0x5

    const v3, 0x7f0c0150

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1205
    sget-object v1, Lade;->S:[Ljava/lang/String;

    const/4 v2, 0x6

    const v3, 0x7f0c014d

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1206
    sget-object v1, Lade;->S:[Ljava/lang/String;

    const/4 v2, 0x7

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1207
    sget-object v1, Lade;->S:[Ljava/lang/String;

    const/16 v2, 0x9

    const v3, 0x7f0c0153

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1208
    const/16 v0, 0xa

    .local v0, "i":I
    :goto_0
    sget-object v1, Lade;->S:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1209
    sget-object v1, Lade;->S:[Ljava/lang/String;

    const v2, 0x7f0c014e

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 1208
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1211
    :cond_0
    return-void
.end method

.method static synthetic b(Lade;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lade;

    .prologue
    .line 102
    iget-object v0, p0, Lade;->z:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lade;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lade;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 102
    iput-object p1, p0, Lade;->r:Ljava/lang/String;

    return-object p1
.end method

.method private b(Ljava/lang/String;)V
    .locals 3
    .param p1, "smsContent"    # Ljava/lang/String;

    .prologue
    .line 1427
    iget-object v1, p0, Lade;->C:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1428
    const-string/jumbo v1, ":\n"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1429
    const-string/jumbo v1, ":\\n"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1430
    .local v0, "blessNameTip":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1431
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lade;->C:Ljava/lang/String;

    .line 1435
    .end local v0    # "blessNameTip":[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method static synthetic c(Lade;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lade;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 102
    iput-object p1, p0, Lade;->s:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lade;)V
    .locals 0
    .param p0, "x0"    # Lade;

    .prologue
    .line 102
    invoke-direct {p0}, Lade;->l()V

    return-void
.end method

.method static synthetic d(Lade;)V
    .locals 0
    .param p0, "x0"    # Lade;

    .prologue
    .line 102
    invoke-direct {p0}, Lade;->i()V

    return-void
.end method

.method static synthetic e(Lade;)V
    .locals 0
    .param p0, "x0"    # Lade;

    .prologue
    .line 102
    invoke-direct {p0}, Lade;->j()V

    return-void
.end method

.method static synthetic f(Lade;)Z
    .locals 1
    .param p0, "x0"    # Lade;

    .prologue
    .line 102
    iget-boolean v0, p0, Lade;->H:Z

    return v0
.end method

.method static synthetic g(Lade;)Z
    .locals 1
    .param p0, "x0"    # Lade;

    .prologue
    .line 102
    iget-boolean v0, p0, Lade;->G:Z

    return v0
.end method

.method static synthetic h(Lade;)Lcom/iflytek/base/contacts/entities/ContactInfo;
    .locals 1
    .param p0, "x0"    # Lade;

    .prologue
    .line 102
    iget-object v0, p0, Lade;->B:Lcom/iflytek/base/contacts/entities/ContactInfo;

    return-object v0
.end method

.method static synthetic h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lade;->p:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lade;)Lacr;
    .locals 1
    .param p0, "x0"    # Lade;

    .prologue
    .line 102
    iget-object v0, p0, Lade;->P:Lacr;

    return-object v0
.end method

.method private i()V
    .locals 3

    .prologue
    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 167
    .local v0, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v1, "android.permission.RECORD_AUDIO"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    iget-object v1, p0, Lade;->z:Landroid/content/Context;

    new-instance v2, Lade$1;

    invoke-direct {v2, p0}, Lade$1;-><init>(Lade;)V

    invoke-static {v1, v0, v2}, Lpd;->a(Landroid/content/Context;Ljava/util/List;Lpj;)V

    .line 191
    return-void
.end method

.method static synthetic j(Lade;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lade;

    .prologue
    .line 102
    iget-object v0, p0, Lade;->E:Ljava/lang/String;

    return-object v0
.end method

.method private j()V
    .locals 3

    .prologue
    .line 198
    iget-object v1, p0, Lade;->y:Lcom/iflytek/framework/business/entities/HandleContext;

    invoke-virtual {v1}, Lcom/iflytek/framework/business/entities/HandleContext;->getWidgetContainerInterface()Lcom/iflytek/framework/ui/container/WidgetContainerInterface;

    move-result-object v0

    check-cast v0, Lcom/iflytek/framework/browser/localControlView/OperationView;

    .line 199
    .local v0, "containerForMMP":Lcom/iflytek/framework/browser/localControlView/OperationView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/localControlView/OperationView;->getLocalBusinessView()Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 200
    invoke-virtual {v0}, Lcom/iflytek/framework/browser/localControlView/OperationView;->getLocalBusinessView()Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    move-result-object v1

    const-string/jumbo v2, "smsView.onSmsRecorgnizeEnd()"

    .line 201
    invoke-virtual {v1, v2}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->loadJavaScript(Ljava/lang/String;)V

    .line 203
    :cond_0
    return-void
.end method

.method static synthetic k(Lade;)Lcom/iflytek/framework/business/entities/HandleContext;
    .locals 1
    .param p0, "x0"    # Lade;

    .prologue
    .line 102
    iget-object v0, p0, Lade;->y:Lcom/iflytek/framework/business/entities/HandleContext;

    return-object v0
.end method

.method private k()V
    .locals 5

    .prologue
    .line 341
    new-instance v2, Lade$a;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lade$a;-><init>(Lade;Lade$1;)V

    iput-object v2, p0, Lade;->O:Lade$a;

    .line 342
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v2, "ON_CONTACT_CHANGE"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 343
    .local v0, "filter":Landroid/content/IntentFilter;
    invoke-static {}, Lauf;->a()Lauf;

    move-result-object v2

    iget-object v3, p0, Lade;->z:Landroid/content/Context;

    iget-object v4, p0, Lade;->O:Lade$a;

    invoke-virtual {v2, v3, v4, v0}, Lauf;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 344
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 345
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "com.iflytek.cmcc.CALL_RECEIVE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 346
    const-string/jumbo v2, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 347
    const-string/jumbo v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 348
    const-string/jumbo v2, "com.iflytek.cmcc.ACTION_SMS_BLESS_CONTENT_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 349
    const-string/jumbo v2, "com.iflytek.cmcc.ACTION_SMS_BLESS_CONTENT_CHANGE_FAIL"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 350
    invoke-static {}, Lauf;->a()Lauf;

    move-result-object v2

    iget-object v3, p0, Lade;->z:Landroid/content/Context;

    iget-object v4, p0, Lade;->T:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v4, v1}, Lauf;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 351
    return-void
.end method

.method static synthetic l(Lade;)Lafu;
    .locals 1
    .param p0, "x0"    # Lade;

    .prologue
    .line 102
    iget-object v0, p0, Lade;->Q:Lafu;

    return-object v0
.end method

.method private l()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1093
    sget-object v1, Lade;->p:Ljava/lang/String;

    const-string/jumbo v2, "smsRecordStart"

    invoke-static {v1, v2}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    iget-object v1, p0, Lade;->z:Landroid/content/Context;

    invoke-static {v1}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v1

    invoke-virtual {v1}, Lhl;->c()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x2

    .line 1096
    invoke-static {}, Lil;->a()Lil;

    move-result-object v2

    const-string/jumbo v3, "com.iflytek.cmccIFLY_LANGUAGE_CHIOCE_v2"

    .line 1097
    invoke-virtual {v2, v3, v4}, Lil;->b(Ljava/lang/String;I)I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 1098
    iget-object v1, p0, Lade;->z:Landroid/content/Context;

    iget-object v2, p0, Lade;->z:Landroid/content/Context;

    const v3, 0x7f0c02fe

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 1099
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1100
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lade;->b(Z)V

    .line 1101
    invoke-virtual {p0}, Lade;->d()V

    .line 1140
    :cond_0
    :goto_0
    return-void

    .line 1104
    :cond_1
    invoke-virtual {p0, v4}, Lade;->b(Z)V

    .line 1107
    iget-object v0, p0, Lade;->K:Lcom/iflytek/yd/speech/ISpeechHandler;

    .line 1108
    .local v0, "speechHandler":Lcom/iflytek/yd/speech/ISpeechHandler;
    invoke-interface {v0}, Lcom/iflytek/yd/speech/ISpeechHandler;->isIdle()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1109
    invoke-interface {v0}, Lcom/iflytek/yd/speech/ISpeechHandler;->stop()V

    .line 1113
    :cond_2
    iget-object v1, p0, Lade;->L:Lapa;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lade;->L:Lapa;

    invoke-virtual {v1}, Lapa;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1119
    :cond_3
    invoke-static {}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a()Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->d(Ljt;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1123
    iget-object v1, p0, Lade;->z:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lade;->z:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    .line 1124
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1125
    new-instance v1, Lapa;

    iget-object v2, p0, Lade;->z:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lapa;-><init>(Landroid/content/Context;Laov$a;)V

    iput-object v1, p0, Lade;->L:Lapa;

    .line 1126
    iget-object v1, p0, Lade;->L:Lapa;

    invoke-virtual {v1, v0}, Lapa;->a(Lcom/iflytek/yd/speech/ISpeechHandler;)V

    .line 1127
    iget-object v1, p0, Lade;->L:Lapa;

    invoke-virtual {v1, p0}, Lapa;->a(Lqu;)V

    .line 1128
    iget-object v1, p0, Lade;->L:Lapa;

    invoke-virtual {v1}, Lapa;->show()V

    .line 1133
    invoke-static {}, Larc;->a()Larc;

    move-result-object v1

    invoke-virtual {v1}, Larc;->h()V

    .line 1136
    iget-object v1, p0, Lade;->z:Landroid/content/Context;

    invoke-static {v1}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->a(Landroid/content/Context;)Lcom/iflytek/base/speech/impl/SpeechSynthesizer;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/iflytek/base/speech/impl/SpeechSynthesizer;->e(Lju;)I

    .line 1138
    iget-object v1, p0, Lade;->K:Lcom/iflytek/yd/speech/ISpeechHandler;

    invoke-direct {p0}, Lade;->m()Landroid/content/Intent;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/iflytek/yd/speech/ISpeechHandler;->start(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private m()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 1146
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1147
    .local v0, "speechIntent":Landroid/content/Intent;
    const-string/jumbo v1, "engine_type"

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1149
    const-string/jumbo v1, "web_scene"

    const-string/jumbo v2, "sms"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1150
    const-string/jumbo v1, "vad_end_time"

    const/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1152
    return-object v0
.end method

.method static synthetic m(Lade;)Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog;
    .locals 1
    .param p0, "x0"    # Lade;

    .prologue
    .line 102
    iget-object v0, p0, Lade;->M:Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog;

    return-object v0
.end method

.method static synthetic n(Lade;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lade;

    .prologue
    .line 102
    iget-object v0, p0, Lade;->r:Ljava/lang/String;

    return-object v0
.end method

.method private n()V
    .locals 2

    .prologue
    .line 1156
    sget-object v0, Lade;->p:Ljava/lang/String;

    const-string/jumbo v1, "smsRecordStop"

    invoke-static {v0, v1}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    iget-object v0, p0, Lade;->K:Lcom/iflytek/yd/speech/ISpeechHandler;

    invoke-interface {v0}, Lcom/iflytek/yd/speech/ISpeechHandler;->stopRecording()V

    .line 1160
    return-void
.end method

.method static synthetic o(Lade;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lade;

    .prologue
    .line 102
    iget-object v0, p0, Lade;->C:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 450
    invoke-virtual {p0}, Lade;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lazk;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 453
    .local v1, "filterStr":Ljava/lang/String;
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    iput-object v2, p0, Lade;->e:Lorg/json/JSONArray;

    .line 454
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    iput-object v2, p0, Lade;->o:Lorg/json/JSONArray;

    .line 456
    invoke-virtual {p0}, Lade;->configInfo()V

    .line 459
    iget-object v2, p0, Lade;->y:Lcom/iflytek/framework/business/entities/HandleContext;

    invoke-virtual {v2}, Lcom/iflytek/framework/business/entities/HandleContext;->getWidgetContainerInterface()Lcom/iflytek/framework/ui/container/WidgetContainerInterface;

    move-result-object v0

    check-cast v0, Lcom/iflytek/framework/browser/localControlView/OperationView;

    .line 460
    .local v0, "containerForMMP":Lcom/iflytek/framework/browser/localControlView/OperationView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/localControlView/OperationView;->getLocalBusinessView()Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 464
    iget-object v2, p0, Lade;->Q:Lafu;

    if-eqz v2, :cond_0

    .line 465
    iget-object v2, p0, Lade;->Q:Lafu;

    invoke-interface {v2, v1}, Lafu;->a(Ljava/lang/String;)V

    .line 469
    :cond_0
    return-void
.end method

.method public a(Lafu;)V
    .locals 0
    .param p1, "actionListener"    # Lafu;

    .prologue
    .line 194
    iput-object p1, p0, Lade;->Q:Lafu;

    .line 195
    return-void
.end method

.method public a(Lcom/iflytek/base/contacts/entities/ContactItem;)V
    .locals 6
    .param p1, "contactItem"    # Lcom/iflytek/base/contacts/entities/ContactItem;

    .prologue
    .line 908
    :try_start_0
    invoke-virtual {p1}, Lcom/iflytek/base/contacts/entities/ContactItem;->i()Ljava/lang/String;

    move-result-object v2

    .line 909
    .local v2, "tagText":Ljava/lang/String;
    const-string/jumbo v3, "`"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 910
    const-string/jumbo v3, "`"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 911
    .local v1, "splitTexts":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v1, v3

    iput-object v3, p0, Lade;->E:Ljava/lang/String;

    .line 918
    .end local v1    # "splitTexts":[Ljava/lang/String;
    .end local v2    # "tagText":Ljava/lang/String;
    :goto_0
    return-void

    .line 913
    .restart local v2    # "tagText":Ljava/lang/String;
    :cond_0
    const-string/jumbo v3, ""

    iput-object v3, p0, Lade;->E:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 915
    .end local v2    # "tagText":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 916
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lade;->p:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 502
    sget-object v2, Lade;->p:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSmsResult is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 519
    :cond_0
    :goto_0
    return-void

    .line 507
    :cond_1
    iget-object v2, p0, Lade;->y:Lcom/iflytek/framework/business/entities/HandleContext;

    invoke-virtual {v2}, Lcom/iflytek/framework/business/entities/HandleContext;->getWidgetContainerInterface()Lcom/iflytek/framework/ui/container/WidgetContainerInterface;

    move-result-object v0

    check-cast v0, Lcom/iflytek/framework/browser/localControlView/OperationView;

    .line 508
    .local v0, "containerForMMP":Lcom/iflytek/framework/browser/localControlView/OperationView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/localControlView/OperationView;->getLocalBusinessView()Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 509
    invoke-static {p1}, Lazk;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 511
    .local v1, "showContent":Ljava/lang/String;
    iget-object v2, p0, Lade;->Q:Lafu;

    if-eqz v2, :cond_0

    .line 512
    iget-object v2, p0, Lade;->Q:Lafu;

    const-string/jumbo v3, "smsSpeech"

    invoke-interface {v2, v1, v3}, Lafu;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/util/List;Ljava/util/HashSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/base/contacts/entities/ContactItem;",
            ">;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 445
    .local p1, "contactItems":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/base/contacts/entities/ContactItem;>;"
    .local p2, "nameList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v0, p0, Lade;->r:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lade;->a(Ljava/util/List;Ljava/util/HashSet;Ljava/lang/String;Z)V

    .line 446
    return-void
.end method

.method protected a(Ljava/util/List;Ljava/util/HashSet;Ljava/lang/String;Z)V
    .locals 11
    .param p3, "smsContent"    # Ljava/lang/String;
    .param p4, "editpage"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/base/contacts/entities/ContactItem;",
            ">;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .local p1, "contactItems":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/base/contacts/entities/ContactItem;>;"
    .local p2, "nameList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 358
    if-nez p3, :cond_3

    const-string/jumbo v6, ""

    :goto_0
    iput-object v6, p0, Lade;->r:Ljava/lang/String;

    move-object v6, p1

    .line 359
    check-cast v6, Ljava/util/ArrayList;

    iput-object v6, p0, Lade;->q:Ljava/util/ArrayList;

    .line 360
    iget-object v6, p0, Lade;->P:Lacr;

    iget-object v7, p0, Lade;->q:Ljava/util/ArrayList;

    invoke-static {v7}, Labd;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-interface {v6, v7}, Lacr;->a(Ljava/util/ArrayList;)V

    .line 362
    invoke-virtual {p2}, Ljava/util/HashSet;->size()I

    move-result v6

    if-ne v6, v9, :cond_c

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v9, :cond_c

    .line 363
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/contacts/entities/ContactItem;

    .line 364
    .local v0, "contactItem":Lcom/iflytek/base/contacts/entities/ContactItem;
    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 365
    .local v3, "names":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 366
    .local v5, "queryName":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Lcom/iflytek/base/contacts/entities/ContactItem;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 367
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lhc;->a(Ljava/lang/String;)Lcom/iflytek/base/contacts/entities/ContactInfo;

    move-result-object v2

    .line 368
    .local v2, "defaultContactInfo":Lcom/iflytek/base/contacts/entities/ContactInfo;
    iget-object v6, p0, Lade;->z:Landroid/content/Context;

    invoke-static {v6}, Lhe;->a(Landroid/content/Context;)Lhe;

    move-result-object v6

    invoke-virtual {v6, v8, v5}, Lhe;->a(ZLjava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    .line 370
    .local v1, "contactSets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/base/contacts/entities/ContactSet;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x2

    if-ge v6, v7, :cond_4

    if-eqz v2, :cond_4

    .line 371
    invoke-virtual {p0, v0}, Lade;->a(Lcom/iflytek/base/contacts/entities/ContactItem;)V

    .line 372
    iput-boolean v9, p0, Lade;->A:Z

    .line 379
    :goto_1
    invoke-virtual {v0}, Lcom/iflytek/base/contacts/entities/ContactItem;->c()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lade;->D:Ljava/lang/String;

    .line 380
    invoke-virtual {v0}, Lcom/iflytek/base/contacts/entities/ContactItem;->e()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lade;->F:Ljava/lang/String;

    .line 381
    iget-object v6, p0, Lade;->F:Ljava/lang/String;

    invoke-static {v6}, Lcom/iflytek/viafly/util/PhoneNumberUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 382
    .local v4, "number":Ljava/lang/String;
    if-eqz v4, :cond_6

    const-string/jumbo v6, ""

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-static {v4}, Lcom/iflytek/viafly/util/PhoneNumberUtil;->d(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 383
    iget-object v6, p0, Lade;->z:Landroid/content/Context;

    iget-object v7, p0, Lade;->F:Ljava/lang/String;

    invoke-static {v6, v7}, Lhd;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lade;->E:Ljava/lang/String;

    .line 384
    iget-object v6, p0, Lade;->E:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lade;->E:Ljava/lang/String;

    const-string/jumbo v7, "null"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 386
    :cond_0
    const-string/jumbo v6, "\u56fa\u8bdd"

    iput-object v6, p0, Lade;->E:Ljava/lang/String;

    .line 398
    :cond_1
    :goto_2
    if-eqz p4, :cond_a

    .line 399
    iget-object v6, p0, Lade;->t:Ljava/lang/String;

    invoke-static {v6}, Lacw;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 400
    iget-object v6, p0, Lade;->C:Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 401
    iget-object v6, p0, Lade;->r:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lade;->C:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ":\n  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lade;->r:Ljava/lang/String;

    .line 402
    iget-object v6, p0, Lade;->r:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lade;->C:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ":\n "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lade;->r:Ljava/lang/String;

    .line 403
    iget-object v6, p0, Lade;->r:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lade;->C:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ":\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lade;->r:Ljava/lang/String;

    .line 404
    iget-object v6, p0, Lade;->r:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lade;->C:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lade;->r:Ljava/lang/String;

    .line 406
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lade;->D:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ":\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lade;->r:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lade;->r:Ljava/lang/String;

    .line 407
    iget-object v6, p0, Lade;->D:Ljava/lang/String;

    iput-object v6, p0, Lade;->C:Ljava/lang/String;

    .line 433
    .end local v0    # "contactItem":Lcom/iflytek/base/contacts/entities/ContactItem;
    .end local v1    # "contactSets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/base/contacts/entities/ContactSet;>;"
    .end local v2    # "defaultContactInfo":Lcom/iflytek/base/contacts/entities/ContactInfo;
    .end local v3    # "names":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v4    # "number":Ljava/lang/String;
    .end local v5    # "queryName":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_3
    new-instance v6, Lcom/iflytek/base/contacts/entities/ContactInfo;

    invoke-direct {v6}, Lcom/iflytek/base/contacts/entities/ContactInfo;-><init>()V

    iput-object v6, p0, Lade;->B:Lcom/iflytek/base/contacts/entities/ContactInfo;

    .line 434
    iget-object v6, p0, Lade;->B:Lcom/iflytek/base/contacts/entities/ContactInfo;

    iget-object v7, p0, Lade;->D:Ljava/lang/String;

    iput-object v7, v6, Lcom/iflytek/base/contacts/entities/ContactInfo;->mName:Ljava/lang/String;

    .line 435
    iget-object v6, p0, Lade;->B:Lcom/iflytek/base/contacts/entities/ContactInfo;

    iget-object v7, p0, Lade;->F:Ljava/lang/String;

    iput-object v7, v6, Lcom/iflytek/base/contacts/entities/ContactInfo;->mNumber:Ljava/lang/String;

    .line 436
    return-void

    .line 358
    :cond_3
    iget-object v6, p0, Lade;->s:Ljava/lang/String;

    goto/16 :goto_0

    .line 373
    .restart local v0    # "contactItem":Lcom/iflytek/base/contacts/entities/ContactItem;
    .restart local v1    # "contactSets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/base/contacts/entities/ContactSet;>;"
    .restart local v2    # "defaultContactInfo":Lcom/iflytek/base/contacts/entities/ContactInfo;
    .restart local v3    # "names":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v5    # "queryName":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_5

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/iflytek/base/contacts/entities/ContactSet;

    invoke-virtual {v6}, Lcom/iflytek/base/contacts/entities/ContactSet;->getNumbers()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v9, :cond_5

    .line 374
    invoke-virtual {p0, v0}, Lade;->a(Lcom/iflytek/base/contacts/entities/ContactItem;)V

    .line 375
    iput-boolean v9, p0, Lade;->A:Z

    goto/16 :goto_1

    .line 377
    :cond_5
    iput-boolean v8, p0, Lade;->A:Z

    goto/16 :goto_1

    .line 388
    .restart local v4    # "number":Ljava/lang/String;
    :cond_6
    if-eqz v4, :cond_7

    const-string/jumbo v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 390
    const-string/jumbo v6, ""

    iput-object v6, p0, Lade;->E:Ljava/lang/String;

    goto/16 :goto_2

    .line 392
    :cond_7
    iget-object v6, p0, Lade;->z:Landroid/content/Context;

    iget-object v7, p0, Lade;->F:Ljava/lang/String;

    invoke-static {v6, v7}, Lhd;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lade;->E:Ljava/lang/String;

    .line 393
    iget-object v6, p0, Lade;->E:Ljava/lang/String;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lade;->E:Ljava/lang/String;

    const-string/jumbo v7, "null"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 394
    :cond_8
    const-string/jumbo v6, ""

    iput-object v6, p0, Lade;->E:Ljava/lang/String;

    goto/16 :goto_2

    .line 409
    :cond_9
    iput-object v10, p0, Lade;->C:Ljava/lang/String;

    goto :goto_3

    .line 412
    :cond_a
    iget-object v6, p0, Lade;->t:Ljava/lang/String;

    invoke-static {v6}, Lacw;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 413
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lade;->D:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ":\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lade;->r:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lade;->r:Ljava/lang/String;

    .line 414
    iget-object v6, p0, Lade;->r:Ljava/lang/String;

    invoke-direct {p0, v6}, Lade;->b(Ljava/lang/String;)V

    .line 415
    iget-object v6, p0, Lade;->D:Ljava/lang/String;

    iput-object v6, p0, Lade;->C:Ljava/lang/String;

    goto/16 :goto_3

    .line 417
    :cond_b
    iput-object v10, p0, Lade;->C:Ljava/lang/String;

    goto/16 :goto_3

    .line 421
    .end local v0    # "contactItem":Lcom/iflytek/base/contacts/entities/ContactItem;
    .end local v1    # "contactSets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/base/contacts/entities/ContactSet;>;"
    .end local v2    # "defaultContactInfo":Lcom/iflytek/base/contacts/entities/ContactInfo;
    .end local v3    # "names":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v4    # "number":Ljava/lang/String;
    .end local v5    # "queryName":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_c
    invoke-virtual {p2}, Ljava/util/HashSet;->size()I

    move-result v6

    if-nez v6, :cond_d

    .line 422
    const-string/jumbo v6, ""

    iput-object v6, p0, Lade;->D:Ljava/lang/String;

    .line 423
    const-string/jumbo v6, ""

    iput-object v6, p0, Lade;->F:Ljava/lang/String;

    .line 424
    iput-object v10, p0, Lade;->C:Ljava/lang/String;

    .line 425
    iput-boolean v8, p0, Lade;->A:Z

    goto/16 :goto_3

    .line 428
    :cond_d
    iput-object v10, p0, Lade;->C:Ljava/lang/String;

    .line 429
    iput-boolean v8, p0, Lade;->A:Z

    goto/16 :goto_3
.end method

.method public a(Z)V
    .locals 4
    .param p1, "isConfirm"    # Z

    .prologue
    .line 478
    sget-object v1, Lade;->p:Ljava/lang/String;

    const-string/jumbo v2, "onSmsFinish beghin"

    invoke-static {v1, v2}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    iget-object v1, p0, Lade;->R:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 482
    iget-object v1, p0, Lade;->R:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 484
    :cond_0
    iget-object v1, p0, Lade;->L:Lapa;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lade;->L:Lapa;

    invoke-virtual {v1}, Lapa;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 485
    iget-object v1, p0, Lade;->L:Lapa;

    invoke-virtual {v1}, Lapa;->cancel()V

    .line 488
    :cond_1
    iget-object v1, p0, Lade;->P:Lacr;

    iget-object v2, p0, Lade;->q:Ljava/util/ArrayList;

    invoke-static {v2}, Labd;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v1, v2}, Lacr;->a(Ljava/util/ArrayList;)V

    .line 490
    iget-object v1, p0, Lade;->y:Lcom/iflytek/framework/business/entities/HandleContext;

    invoke-virtual {v1}, Lcom/iflytek/framework/business/entities/HandleContext;->getWidgetContainerInterface()Lcom/iflytek/framework/ui/container/WidgetContainerInterface;

    move-result-object v0

    check-cast v0, Lcom/iflytek/framework/browser/localControlView/OperationView;

    .line 491
    .local v0, "containerForMMP":Lcom/iflytek/framework/browser/localControlView/OperationView;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/localControlView/OperationView;->getLocalBusinessView()Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 492
    invoke-virtual {v0}, Lcom/iflytek/framework/browser/localControlView/OperationView;->getLocalBusinessView()Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "smsView.onSmsFinish("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 494
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\')"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 493
    invoke-virtual {v1, v2}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->loadJavaScript(Ljava/lang/String;)V

    .line 496
    :cond_2
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 535
    iget-object v1, p0, Lade;->y:Lcom/iflytek/framework/business/entities/HandleContext;

    invoke-virtual {v1}, Lcom/iflytek/framework/business/entities/HandleContext;->getWidgetContainerInterface()Lcom/iflytek/framework/ui/container/WidgetContainerInterface;

    move-result-object v0

    check-cast v0, Lcom/iflytek/framework/browser/localControlView/OperationView;

    .line 536
    .local v0, "containerForMMP":Lcom/iflytek/framework/browser/localControlView/OperationView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/localControlView/OperationView;->getLocalBusinessView()Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 538
    iget-object v1, p0, Lade;->Q:Lafu;

    if-eqz v1, :cond_0

    .line 539
    iget-object v1, p0, Lade;->Q:Lafu;

    invoke-interface {v1}, Lafu;->b()V

    .line 544
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lade;->N:Z

    .line 545
    return-void
.end method

.method public b(Z)V
    .locals 2
    .param p1, "isNetError"    # Z

    .prologue
    .line 599
    iget-object v1, p0, Lade;->y:Lcom/iflytek/framework/business/entities/HandleContext;

    invoke-virtual {v1}, Lcom/iflytek/framework/business/entities/HandleContext;->getWidgetContainerInterface()Lcom/iflytek/framework/ui/container/WidgetContainerInterface;

    move-result-object v0

    check-cast v0, Lcom/iflytek/framework/browser/localControlView/OperationView;

    .line 600
    .local v0, "containerForMMP":Lcom/iflytek/framework/browser/localControlView/OperationView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/localControlView/OperationView;->getLocalBusinessView()Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 601
    iget-object v1, p0, Lade;->Q:Lafu;

    if-eqz v1, :cond_0

    .line 602
    iget-object v1, p0, Lade;->Q:Lafu;

    invoke-interface {v1, p1}, Lafu;->a(Z)V

    .line 607
    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 552
    iget-boolean v1, p0, Lade;->N:Z

    if-eqz v1, :cond_0

    .line 557
    iget-object v1, p0, Lade;->y:Lcom/iflytek/framework/business/entities/HandleContext;

    invoke-virtual {v1}, Lcom/iflytek/framework/business/entities/HandleContext;->getWidgetContainerInterface()Lcom/iflytek/framework/ui/container/WidgetContainerInterface;

    move-result-object v0

    check-cast v0, Lcom/iflytek/framework/browser/localControlView/OperationView;

    .line 558
    .local v0, "containerForMMP":Lcom/iflytek/framework/browser/localControlView/OperationView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/localControlView/OperationView;->getLocalBusinessView()Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 559
    iget-object v1, p0, Lade;->Q:Lafu;

    if-eqz v1, :cond_0

    .line 560
    iget-object v1, p0, Lade;->Q:Lafu;

    invoke-interface {v1}, Lafu;->c()V

    .line 567
    .end local v0    # "containerForMMP":Lcom/iflytek/framework/browser/localControlView/OperationView;
    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 0
    .param p1, "isAllType"    # Z

    .prologue
    .line 1438
    iput-boolean p1, p0, Lade;->G:Z

    .line 1439
    return-void
.end method

.method public canDelete()Z
    .locals 1

    .prologue
    .line 1008
    const/4 v0, 0x1

    return v0
.end method

.method public configInfo()V
    .locals 11

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1028
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 1029
    .local v4, "jsonArray_SimName":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .line 1030
    .local v2, "isShowSimName":Z
    invoke-virtual {p0}, Lade;->f()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1031
    iget-object v6, p0, Lade;->D:Ljava/lang/String;

    iput-object v6, p0, Lade;->a:Ljava/lang/String;

    .line 1032
    iget-object v6, p0, Lade;->E:Ljava/lang/String;

    iput-object v6, p0, Lade;->b:Ljava/lang/String;

    .line 1033
    iget-object v6, p0, Lade;->F:Ljava/lang/String;

    iput-object v6, p0, Lade;->c:Ljava/lang/String;

    .line 1035
    const/4 v5, 0x0

    .line 1036
    .local v5, "needShowMore":Z
    iget-object v6, p0, Lade;->q:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v7, :cond_0

    .line 1037
    const/4 v5, 0x1

    .line 1039
    :cond_0
    iput-boolean v5, p0, Lade;->d:Z

    .line 1058
    .end local v5    # "needShowMore":Z
    :goto_0
    iget-object v6, p0, Lade;->z:Landroid/content/Context;

    invoke-static {v6}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v6

    invoke-virtual {v6}, Lhl;->c()Z

    move-result v6

    if-nez v6, :cond_6

    const/4 v6, 0x2

    .line 1059
    invoke-static {}, Lil;->a()Lil;

    move-result-object v9

    const-string/jumbo v10, "com.iflytek.cmccIFLY_LANGUAGE_CHIOCE_v2"

    .line 1060
    invoke-virtual {v9, v10, v8}, Lil;->b(Ljava/lang/String;I)I

    move-result v9

    if-eq v6, v9, :cond_6

    .line 1061
    iput-boolean v7, p0, Lade;->f:Z

    .line 1065
    :goto_1
    iget-boolean v6, p0, Lade;->A:Z

    iput-boolean v6, p0, Lade;->g:Z

    .line 1066
    iget-object v6, p0, Lade;->r:Ljava/lang/String;

    iput-object v6, p0, Lade;->h:Ljava/lang/String;

    .line 1068
    invoke-static {}, Laba;->a()Laba;

    move-result-object v6

    invoke-virtual {v6}, Laba;->b()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1069
    invoke-static {}, Lil;->a()Lil;

    move-result-object v6

    const-string/jumbo v9, "com.iflytek.cmcc.IFLY_SIM_NAME"

    invoke-virtual {v6, v9}, Lil;->c(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1070
    invoke-static {}, Laba;->a()Laba;

    move-result-object v6

    invoke-virtual {v6}, Laba;->g()Z

    move-result v6

    if-eqz v6, :cond_7

    move v2, v7

    .line 1072
    :goto_2
    invoke-static {}, Laba;->a()Laba;

    move-result-object v6

    iget-object v7, p0, Lade;->z:Landroid/content/Context;

    sget-object v8, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {v6, v7, v8, v2}, Laba;->a(Landroid/content/Context;Lcom/iflytek/common/adaptation/entity/SimCard;Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1073
    invoke-static {}, Laba;->a()Laba;

    move-result-object v6

    iget-object v7, p0, Lade;->z:Landroid/content/Context;

    sget-object v8, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {v6, v7, v8, v2}, Laba;->a(Landroid/content/Context;Lcom/iflytek/common/adaptation/entity/SimCard;Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1076
    :cond_1
    iget-boolean v6, p0, Lade;->I:Z

    iput-boolean v6, p0, Lade;->i:Z

    .line 1077
    iget-boolean v6, p0, Lade;->x:Z

    iput-boolean v6, p0, Lade;->j:Z

    .line 1078
    iget-object v6, p0, Lade;->t:Ljava/lang/String;

    invoke-static {v6}, Lacw;->a(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lade;->k:Z

    .line 1080
    invoke-static {}, Laba;->a()Laba;

    move-result-object v6

    invoke-virtual {v6}, Laba;->b()Z

    move-result v6

    iput-boolean v6, p0, Lade;->l:Z

    .line 1081
    iget-object v6, p0, Lade;->w:Lcom/iflytek/common/adaptation/entity/SimCard;

    iput-object v6, p0, Lade;->m:Lcom/iflytek/common/adaptation/entity/SimCard;

    .line 1083
    iput-boolean v2, p0, Lade;->n:Z

    .line 1084
    iput-object v4, p0, Lade;->o:Lorg/json/JSONArray;

    .line 1085
    return-void

    .line 1041
    :cond_2
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 1042
    .local v3, "jsonArray":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .line 1043
    .local v1, "i":I
    const/4 v1, 0x0

    :goto_3
    iget-object v6, p0, Lade;->q:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_4

    .line 1044
    iget-object v6, p0, Lade;->q:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/iflytek/base/contacts/entities/ContactItem;

    invoke-virtual {v6}, Lcom/iflytek/base/contacts/entities/ContactItem;->c()Ljava/lang/String;

    move-result-object v0

    .line 1045
    .local v0, "contactName":Ljava/lang/String;
    sget-object v6, Lade;->p:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "----------------->>> contactName: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    if-eqz v0, :cond_3

    const-string/jumbo v6, ""

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1047
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1043
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1050
    .end local v0    # "contactName":Ljava/lang/String;
    :cond_4
    if-le v1, v7, :cond_5

    .line 1051
    iput-object v3, p0, Lade;->e:Lorg/json/JSONArray;

    goto/16 :goto_0

    .line 1053
    :cond_5
    iget-object v6, p0, Lade;->D:Ljava/lang/String;

    iput-object v6, p0, Lade;->a:Ljava/lang/String;

    .line 1054
    iget-object v6, p0, Lade;->E:Ljava/lang/String;

    iput-object v6, p0, Lade;->b:Ljava/lang/String;

    .line 1055
    iget-object v6, p0, Lade;->F:Ljava/lang/String;

    iput-object v6, p0, Lade;->c:Ljava/lang/String;

    goto/16 :goto_0

    .line 1063
    .end local v1    # "i":I
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    :cond_6
    iput-boolean v8, p0, Lade;->f:Z

    goto/16 :goto_1

    :cond_7
    move v2, v8

    .line 1070
    goto/16 :goto_2
.end method

.method public d()V
    .locals 2

    .prologue
    .line 574
    const/4 v1, 0x0

    iput-boolean v1, p0, Lade;->N:Z

    .line 579
    iget-object v1, p0, Lade;->y:Lcom/iflytek/framework/business/entities/HandleContext;

    invoke-virtual {v1}, Lcom/iflytek/framework/business/entities/HandleContext;->getWidgetContainerInterface()Lcom/iflytek/framework/ui/container/WidgetContainerInterface;

    move-result-object v0

    check-cast v0, Lcom/iflytek/framework/browser/localControlView/OperationView;

    .line 580
    .local v0, "containerForMMP":Lcom/iflytek/framework/browser/localControlView/OperationView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/localControlView/OperationView;->getLocalBusinessView()Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 582
    iget-object v1, p0, Lade;->Q:Lafu;

    if-eqz v1, :cond_0

    .line 583
    iget-object v1, p0, Lade;->Q:Lafu;

    invoke-interface {v1}, Lafu;->d()V

    .line 592
    :cond_0
    return-void
.end method

.method public e()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/base/contacts/entities/ContactItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 610
    iget-object v0, p0, Lade;->q:Ljava/util/ArrayList;

    return-object v0
.end method

.method public exec(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;
    .locals 23
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "jsonArgs"    # Ljava/lang/String;

    .prologue
    .line 615
    sget-object v16, Lade;->p:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "exec start, aciton is "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " ,args is "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    :try_start_0
    const-string/jumbo v16, "stopVoiceInteraction"

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 620
    move-object/from16 v0, p0

    iget-object v0, v0, Lade;->y:Lcom/iflytek/framework/business/entities/HandleContext;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/iflytek/framework/business/entities/HandleContext;->getWidgetContainerInterface()Lcom/iflytek/framework/ui/container/WidgetContainerInterface;

    move-result-object v9

    check-cast v9, Lcom/iflytek/framework/browser/localControlView/OperationView;

    .line 621
    .local v9, "containerForMMP":Lcom/iflytek/framework/browser/localControlView/OperationView;
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Lcom/iflytek/framework/browser/localControlView/OperationView;->getLocalBusinessView()Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    move-result-object v16

    if-eqz v16, :cond_0

    .line 622
    invoke-virtual {v9}, Lcom/iflytek/framework/browser/localControlView/OperationView;->getLocalBusinessView()Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    move-result-object v16

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->setNeedSoftKeyboardShow(Z)V

    .line 626
    :cond_0
    new-instance v16, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v17, "OK"

    const-string/jumbo v18, "input message content by hand"

    invoke-direct/range {v16 .. v18}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    .end local v9    # "containerForMMP":Lcom/iflytek/framework/browser/localControlView/OperationView;
    :goto_0
    return-object v16

    .line 628
    :cond_1
    const-string/jumbo v16, "editContacts"

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 629
    new-instance v2, Lorg/json/JSONArray;

    move-object/from16 v0, p2

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 630
    .local v2, "args":Lorg/json/JSONArray;
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 631
    .local v15, "smsContent":Ljava/lang/String;
    if-nez v15, :cond_2

    .line 632
    const-string/jumbo v15, ""

    .line 634
    :cond_2
    const/4 v7, 0x0

    .line 635
    .local v7, "contactItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/base/contacts/entities/ContactItem;>;"
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lade;->A:Z

    move/from16 v16, v0

    if-eqz v16, :cond_4

    .line 636
    new-instance v7, Ljava/util/ArrayList;

    .end local v7    # "contactItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/base/contacts/entities/ContactItem;>;"
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 637
    .restart local v7    # "contactItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/base/contacts/entities/ContactItem;>;"
    new-instance v6, Lcom/iflytek/base/contacts/entities/ContactItem;

    invoke-direct {v6}, Lcom/iflytek/base/contacts/entities/ContactItem;-><init>()V

    .line 638
    .local v6, "contactItem":Lcom/iflytek/base/contacts/entities/ContactItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lade;->B:Lcom/iflytek/base/contacts/entities/ContactInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/iflytek/base/contacts/entities/ContactInfo;->mName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Lcom/iflytek/base/contacts/entities/ContactItem;->b(Ljava/lang/String;)V

    .line 639
    move-object/from16 v0, p0

    iget-object v0, v0, Lade;->B:Lcom/iflytek/base/contacts/entities/ContactInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/iflytek/base/contacts/entities/ContactInfo;->mNumber:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Lcom/iflytek/base/contacts/entities/ContactItem;->c(Ljava/lang/String;)V

    .line 640
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 645
    .end local v6    # "contactItem":Lcom/iflytek/base/contacts/entities/ContactItem;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lade;->R:Landroid/os/Handler;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lade;->R:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 873
    .end local v2    # "args":Lorg/json/JSONArray;
    .end local v7    # "contactItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/base/contacts/entities/ContactItem;>;"
    .end local v15    # "smsContent":Ljava/lang/String;
    :cond_3
    :goto_2
    new-instance v16, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    invoke-direct/range {v16 .. v16}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>()V

    goto :goto_0

    .line 642
    .restart local v2    # "args":Lorg/json/JSONArray;
    .restart local v7    # "contactItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/base/contacts/entities/ContactItem;>;"
    .restart local v15    # "smsContent":Ljava/lang/String;
    :cond_4
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lade;->e()Ljava/util/ArrayList;

    move-result-object v7

    goto :goto_1

    .line 646
    .end local v2    # "args":Lorg/json/JSONArray;
    .end local v7    # "contactItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/base/contacts/entities/ContactItem;>;"
    .end local v15    # "smsContent":Ljava/lang/String;
    :cond_5
    const-string/jumbo v16, "contentChanged"

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 647
    new-instance v2, Lorg/json/JSONArray;

    move-object/from16 v0, p2

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 648
    .restart local v2    # "args":Lorg/json/JSONArray;
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lade;->r:Ljava/lang/String;

    .line 649
    move-object/from16 v0, p0

    iget-object v0, v0, Lade;->r:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lade;->s:Ljava/lang/String;

    .line 650
    move-object/from16 v0, p0

    iget-object v0, v0, Lade;->P:Lacr;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lade;->r:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-interface/range {v16 .. v17}, Lacr;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 868
    .end local v2    # "args":Lorg/json/JSONArray;
    :catch_0
    move-exception v10

    .line 869
    .local v10, "e":Ljava/lang/Exception;
    sget-object v16, Lade;->p:Ljava/lang/String;

    const-string/jumbo v17, "exec error"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v10}, Lhj;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 870
    new-instance v16, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v17, "JSON error"

    const-string/jumbo v18, ""

    invoke-direct/range {v16 .. v18}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 651
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_6
    :try_start_2
    const-string/jumbo v16, "selectContact"

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_9

    .line 652
    move-object/from16 v0, p0

    iget-object v0, v0, Lade;->z:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lade;->D:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v16 .. v17}, Lade;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 654
    .local v8, "contactItems":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/base/contacts/entities/ContactItem;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lade;->M:Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog;

    move-object/from16 v16, v0

    if-eqz v16, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lade;->M:Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog;->isShowing()Z

    move-result v16

    if-eqz v16, :cond_7

    .line 655
    move-object/from16 v0, p0

    iget-object v0, v0, Lade;->M:Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog;->dismiss()V

    .line 658
    :cond_7
    new-instance v16, Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lade;->z:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-direct/range {v16 .. v17}, Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lade;->M:Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog;

    .line 659
    move-object/from16 v0, p0

    iget-object v0, v0, Lade;->M:Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog;->setContactItems(Ljava/util/List;)V

    .line 660
    move-object/from16 v0, p0

    iget-object v0, v0, Lade;->M:Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lade;->D:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 661
    move-object/from16 v0, p0

    iget-object v14, v0, Lade;->B:Lcom/iflytek/base/contacts/entities/ContactInfo;

    .line 662
    .local v14, "selectedNumberInfo":Lcom/iflytek/base/contacts/entities/ContactInfo;
    if-eqz v14, :cond_8

    .line 663
    move-object/from16 v0, p0

    iget-object v0, v0, Lade;->M:Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog;

    move-object/from16 v16, v0

    iget-object v0, v14, Lcom/iflytek/base/contacts/entities/ContactInfo;->mNumber:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog;->setSelectedNum(Ljava/lang/String;)V

    .line 665
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lade;->M:Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog;

    move-object/from16 v16, v0

    new-instance v17, Lade$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v8}, Lade$3;-><init>(Lade;Ljava/util/List;)V

    invoke-virtual/range {v16 .. v17}, Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 714
    move-object/from16 v0, p0

    iget-object v0, v0, Lade;->M:Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog;->show()V

    goto/16 :goto_2

    .line 715
    .end local v8    # "contactItems":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/base/contacts/entities/ContactItem;>;"
    .end local v14    # "selectedNumberInfo":Lcom/iflytek/base/contacts/entities/ContactInfo;
    :cond_9
    const-string/jumbo v16, "smsSend"

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_12

    .line 716
    move-object/from16 v0, p0

    iget-object v0, v0, Lade;->q:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    if-eqz v16, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lade;->q:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    if-lez v16, :cond_11

    .line 717
    new-instance v13, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v13}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 719
    .local v13, "numberList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lade;->A:Z

    move/from16 v16, v0

    if-eqz v16, :cond_f

    .line 720
    move-object/from16 v0, p0

    iget-object v0, v0, Lade;->B:Lcom/iflytek/base/contacts/entities/ContactInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/iflytek/base/contacts/entities/ContactInfo;->mNumber:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 727
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lade;->B:Lcom/iflytek/base/contacts/entities/ContactInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/iflytek/base/contacts/entities/ContactInfo;->mName:Ljava/lang/String;

    move-object/from16 v16, v0

    if-eqz v16, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lade;->B:Lcom/iflytek/base/contacts/entities/ContactInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/iflytek/base/contacts/entities/ContactInfo;->mNumber:Ljava/lang/String;

    move-object/from16 v16, v0

    if-eqz v16, :cond_b

    .line 728
    move-object/from16 v0, p0

    iget-object v0, v0, Lade;->z:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lade;->B:Lcom/iflytek/base/contacts/entities/ContactInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/iflytek/base/contacts/entities/ContactInfo;->mName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lade;->B:Lcom/iflytek/base/contacts/entities/ContactInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/iflytek/base/contacts/entities/ContactInfo;->mNumber:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v16 .. v18}, Lhc;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    :cond_b
    new-instance v2, Lorg/json/JSONArray;

    move-object/from16 v0, p2

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 731
    .restart local v2    # "args":Lorg/json/JSONArray;
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 732
    .restart local v15    # "smsContent":Ljava/lang/String;
    if-nez v15, :cond_c

    .line 733
    const-string/jumbo v15, ""

    .line 735
    :cond_c
    move-object/from16 v0, p0

    iput-object v15, v0, Lade;->r:Ljava/lang/String;

    .line 736
    move-object/from16 v0, p0

    iget-object v0, v0, Lade;->P:Lacr;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lade;->r:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-interface/range {v16 .. v17}, Lacr;->a(Ljava/lang/String;)V

    .line 743
    const-string/jumbo v16, "send"

    invoke-static/range {v16 .. v16}, Labv;->b(Ljava/lang/String;)V

    .line 744
    sget-object v16, Lcom/iflytek/framework/business/speech/InteractionScene;->select_sms_send_confirm:Lcom/iflytek/framework/business/speech/InteractionScene;

    invoke-static/range {v16 .. v16}, Lcom/iflytek/framework/business/entities/BusinessTempData;->setInteractionScene(Lcom/iflytek/framework/business/speech/InteractionScene;)V

    .line 746
    invoke-static {}, Laba;->a()Laba;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Laba;->b()Z

    move-result v16

    if-eqz v16, :cond_d

    .line 747
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v16

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_d

    .line 748
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 749
    .local v4, "card":Ljava/lang/String;
    const-string/jumbo v16, "first"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_10

    .line 750
    move-object/from16 v0, p0

    iget-object v0, v0, Lade;->P:Lacr;

    move-object/from16 v16, v0

    sget-object v17, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-interface/range {v16 .. v17}, Lacr;->a(Lcom/iflytek/common/adaptation/entity/SimCard;)V

    .line 751
    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Labb;->c(Z)V

    .line 758
    .end local v4    # "card":Ljava/lang/String;
    :cond_d
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lade;->z:Landroid/content/Context;

    move-object/from16 v16, v0

    const-string/jumbo v17, "select_sms_send_confirm"

    move-object/from16 v0, p0

    iget-byte v0, v0, Lade;->J:B

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lade;->z:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x7f0c037e

    .line 760
    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    .line 758
    invoke-static/range {v16 .. v19}, Labz;->a(Landroid/content/Context;Ljava/lang/String;B[Ljava/lang/Object;)V

    .line 761
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v16

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_e

    .line 762
    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 766
    :cond_e
    const-string/jumbo v16, "MESSAGE_FROM_SMART"

    move-object/from16 v0, p0

    iget-object v0, v0, Lade;->v:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 767
    move-object/from16 v0, p0

    iget-object v0, v0, Lade;->z:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lxm;->a(Landroid/content/Context;)Lxm;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lxm;->a()V

    goto/16 :goto_2

    .line 722
    .end local v2    # "args":Lorg/json/JSONArray;
    .end local v15    # "smsContent":Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lade;->q:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_a

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/iflytek/base/contacts/entities/ContactItem;

    .line 723
    .local v5, "contact":Lcom/iflytek/base/contacts/entities/ContactItem;
    invoke-virtual {v5}, Lcom/iflytek/base/contacts/entities/ContactItem;->e()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 753
    .end local v5    # "contact":Lcom/iflytek/base/contacts/entities/ContactItem;
    .restart local v2    # "args":Lorg/json/JSONArray;
    .restart local v4    # "card":Ljava/lang/String;
    .restart local v15    # "smsContent":Ljava/lang/String;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lade;->P:Lacr;

    move-object/from16 v16, v0

    sget-object v17, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-interface/range {v16 .. v17}, Lacr;->a(Lcom/iflytek/common/adaptation/entity/SimCard;)V

    .line 754
    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Labb;->c(Z)V

    goto/16 :goto_3

    .line 770
    .end local v2    # "args":Lorg/json/JSONArray;
    .end local v4    # "card":Ljava/lang/String;
    .end local v13    # "numberList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v15    # "smsContent":Ljava/lang/String;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lade;->z:Landroid/content/Context;

    move-object/from16 v16, v0

    const-string/jumbo v17, "\u60a8\u6ca1\u6709\u9009\u62e9\u8054\u7cfb\u4eba"

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/widget/Toast;->show()V

    .line 772
    invoke-static {}, Lcom/iflytek/framework/business/entities/BusinessTempData;->clearTempData()V

    goto/16 :goto_2

    .line 774
    :cond_12
    const-string/jumbo v16, "smsCancel"

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_13

    .line 781
    const-string/jumbo v16, "cancel"

    invoke-static/range {v16 .. v16}, Labv;->b(Ljava/lang/String;)V

    .line 782
    sget-object v16, Lcom/iflytek/framework/business/speech/InteractionScene;->select_sms_send_confirm:Lcom/iflytek/framework/business/speech/InteractionScene;

    invoke-static/range {v16 .. v16}, Lcom/iflytek/framework/business/entities/BusinessTempData;->setInteractionScene(Lcom/iflytek/framework/business/speech/InteractionScene;)V

    .line 783
    move-object/from16 v0, p0

    iget-object v0, v0, Lade;->z:Landroid/content/Context;

    move-object/from16 v16, v0

    const-string/jumbo v17, "select_sms_send_confirm"

    move-object/from16 v0, p0

    iget-byte v0, v0, Lade;->J:B

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lade;->z:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x7f0c0362

    .line 785
    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    .line 783
    invoke-static/range {v16 .. v19}, Labz;->a(Landroid/content/Context;Ljava/lang/String;B[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 789
    :cond_13
    const-string/jumbo v16, "selectIme"

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_14

    .line 790
    new-instance v3, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lade;->z:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 791
    .local v3, "builder":Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;
    const-string/jumbo v16, "\u786e\u5b9a"

    new-instance v17, Lade$4;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lade$4;-><init>(Lade;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;->setPositiveButton(Ljava/lang/String;Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;

    .line 805
    const-string/jumbo v16, "\u8bd5\u8bd5\u7075\u7280\u8f93\u5165\u6cd5\r\n                \u2014\u2014\u66f4\u4e86\u89e3\u60a8\u7684\u8f93\u5165\u6cd5"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;

    .line 806
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;->setCancelable(Z)Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;

    goto/16 :goto_2

    .line 820
    .end local v3    # "builder":Lcom/iflytek/viafly/ui/dialog/CustomAlertDialog$Builder;
    :cond_14
    const-string/jumbo v16, "smsRecordStart"

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_17

    .line 821
    invoke-static {}, Lqb;->a()Z

    move-result v16

    if-eqz v16, :cond_15

    .line 822
    move-object/from16 v0, p0

    iget-object v0, v0, Lade;->z:Landroid/content/Context;

    move-object/from16 v16, v0

    const-string/jumbo v17, "\u8bf7\u5148\u5173\u95ed\u8bed\u97f3\u5524\u9192\uff0c\u518d\u4f7f\u7528\u6b64\u9ea6\u514b\u98ce"

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/widget/Toast;->show()V

    .line 823
    new-instance v16, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    invoke-direct/range {v16 .. v16}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>()V

    goto/16 :goto_0

    .line 825
    :cond_15
    invoke-static {}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a()Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->d(Ljt;)Z

    move-result v16

    if-nez v16, :cond_3

    .line 826
    new-instance v2, Lorg/json/JSONArray;

    move-object/from16 v0, p2

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 827
    .restart local v2    # "args":Lorg/json/JSONArray;
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 828
    .restart local v15    # "smsContent":Ljava/lang/String;
    if-nez v15, :cond_16

    .line 829
    const-string/jumbo v15, ""

    .line 831
    :cond_16
    move-object/from16 v0, p0

    iput-object v15, v0, Lade;->r:Ljava/lang/String;

    .line 832
    move-object/from16 v0, p0

    iget-object v0, v0, Lade;->r:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lade;->s:Ljava/lang/String;

    .line 833
    move-object/from16 v0, p0

    iget-object v0, v0, Lade;->R:Landroid/os/Handler;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Landroid/os/Handler;->removeMessages(I)V

    .line 835
    move-object/from16 v0, p0

    iget-object v0, v0, Lade;->R:Landroid/os/Handler;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lade;->R:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 837
    const-string/jumbo v16, "micstarttime"

    invoke-static/range {v16 .. v16}, Labv;->c(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 839
    .end local v2    # "args":Lorg/json/JSONArray;
    .end local v15    # "smsContent":Ljava/lang/String;
    :cond_17
    const-string/jumbo v16, "smsRecordStop"

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_18

    .line 840
    invoke-direct/range {p0 .. p0}, Lade;->n()V

    goto/16 :goto_2

    .line 841
    :cond_18
    const-string/jumbo v16, "changeContactContent"

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 842
    sget-object v16, Lade;->p:Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    move-object/from16 v0, p0

    iget-object v0, v0, Lade;->t:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lacw;->a(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_1b

    .line 844
    sget-object v16, Lade;->p:Ljava/lang/String;

    const-string/jumbo v17, "\u7533\u8bf7\u66f4\u6362\u4e00\u6761\u795d\u798f\u77ed\u4fe1\u5185\u5bb9"

    invoke-static/range {v16 .. v17}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    invoke-static {}, Labb;->d()Ljava/lang/String;

    move-result-object v12

    .line 848
    .local v12, "newBlessContent":Ljava/lang/String;
    if-eqz v12, :cond_1a

    .line 849
    move-object/from16 v0, p0

    iput-object v12, v0, Lade;->s:Ljava/lang/String;

    .line 850
    sget-object v16, Lade;->p:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "newBlessContent = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    move-object/from16 v0, p0

    iget-object v0, v0, Lade;->C:Ljava/lang/String;

    move-object/from16 v16, v0

    if-eqz v16, :cond_19

    .line 853
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lade;->C:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ":\n"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lade;->r:Ljava/lang/String;

    .line 857
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lade;->a()V

    goto/16 :goto_2

    .line 855
    :cond_19
    move-object/from16 v0, p0

    iput-object v12, v0, Lade;->r:Ljava/lang/String;

    goto :goto_5

    .line 859
    :cond_1a
    invoke-static {}, Labk;->a()Labk;

    move-result-object v16

    const-string/jumbo v17, "10"

    move-object/from16 v0, p0

    iget-object v0, v0, Lade;->t:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lade;->u:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v16 .. v20}, Labk;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)J

    goto/16 :goto_2

    .line 862
    .end local v12    # "newBlessContent":Ljava/lang/String;
    :cond_1b
    const-string/jumbo v16, "sms_click_change_contacts"

    invoke-static/range {v16 .. v16}, Labv;->c(Ljava/lang/String;)V

    .line 863
    new-instance v11, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lade;->z:Landroid/content/Context;

    move-object/from16 v16, v0

    const-class v17, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v11, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 864
    .local v11, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lade;->z:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 921
    iget-boolean v0, p0, Lade;->A:Z

    return v0
.end method

.method public g()V
    .locals 2

    .prologue
    .line 1457
    iget-object v1, p0, Lade;->y:Lcom/iflytek/framework/business/entities/HandleContext;

    invoke-virtual {v1}, Lcom/iflytek/framework/business/entities/HandleContext;->getWidgetContainerInterface()Lcom/iflytek/framework/ui/container/WidgetContainerInterface;

    move-result-object v0

    check-cast v0, Lcom/iflytek/framework/browser/localControlView/OperationView;

    .line 1458
    .local v0, "containerForMMP":Lcom/iflytek/framework/browser/localControlView/OperationView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/localControlView/OperationView;->getLocalBusinessView()Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1459
    invoke-virtual {v0}, Lcom/iflytek/framework/browser/localControlView/OperationView;->getLocalBusinessView()Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    move-result-object v1

    .line 1460
    invoke-virtual {v1}, Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;->b()V

    .line 1462
    :cond_0
    return-void
.end method

.method public getComponents()Lcom/iflytek/mmp/core/componentsManager/Components;
    .locals 0

    .prologue
    .line 926
    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1013
    const-string/jumbo v0, "WidgetSmsInputView"

    return-object v0
.end method

.method public handleLastResult(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/yd/speech/ViaAsrResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1395
    .local p1, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/yd/speech/ViaAsrResult;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 1404
    :cond_0
    :goto_0
    return-void

    .line 1400
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/yd/speech/ViaAsrResult;

    iget-object v0, v1, Lcom/iflytek/yd/speech/ViaAsrResult;->mContent:Ljava/lang/String;

    .line 1401
    .local v0, "content":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lade;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleParticalResult(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/yd/speech/ViaAsrResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1367
    .local p1, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/yd/speech/ViaAsrResult;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 1391
    :cond_0
    :goto_0
    return-void

    .line 1370
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/yd/speech/ViaAsrResult;

    iget-object v1, v3, Lcom/iflytek/yd/speech/ViaAsrResult;->mContent:Ljava/lang/String;

    .line 1380
    .local v1, "content":Ljava/lang/String;
    iget-object v3, p0, Lade;->y:Lcom/iflytek/framework/business/entities/HandleContext;

    invoke-virtual {v3}, Lcom/iflytek/framework/business/entities/HandleContext;->getWidgetContainerInterface()Lcom/iflytek/framework/ui/container/WidgetContainerInterface;

    move-result-object v0

    check-cast v0, Lcom/iflytek/framework/browser/localControlView/OperationView;

    .line 1381
    .local v0, "containerForMMP":Lcom/iflytek/framework/browser/localControlView/OperationView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iflytek/framework/browser/localControlView/OperationView;->getLocalBusinessView()Lcom/iflytek/framework/browser/localControlView/LocalBusinessWebView;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1382
    invoke-static {v1}, Lazk;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1387
    .local v2, "showContent":Ljava/lang/String;
    iget-object v3, p0, Lade;->Q:Lafu;

    if-eqz v3, :cond_0

    .line 1388
    iget-object v3, p0, Lade;->Q:Lafu;

    const-string/jumbo v4, "smsSpeech"

    invoke-interface {v3, v2, v4}, Lafu;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public init(Landroid/content/Context;Lcom/iflytek/mmp/core/webcore/BrowserCore;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "browserCore"    # Lcom/iflytek/mmp/core/webcore/BrowserCore;

    .prologue
    .line 879
    return-void
.end method

.method public isHistoryResult()Z
    .locals 1

    .prologue
    .line 1022
    const/4 v0, 0x0

    return v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 883
    sget-object v0, Lade;->p:Ljava/lang/String;

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    invoke-static {}, Lauf;->a()Lauf;

    move-result-object v0

    iget-object v1, p0, Lade;->z:Landroid/content/Context;

    iget-object v2, p0, Lade;->O:Lade$a;

    invoke-virtual {v0, v1, v2}, Lauf;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 885
    invoke-static {}, Lauf;->a()Lauf;

    move-result-object v0

    iget-object v1, p0, Lade;->z:Landroid/content/Context;

    iget-object v2, p0, Lade;->T:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v2}, Lauf;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 886
    invoke-static {}, Labv;->b()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "send"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Labv;->b()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "cancel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 887
    :cond_0
    sget-object v0, Lade;->p:Ljava/lang/String;

    invoke-static {}, Labv;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    :goto_0
    invoke-static {}, Labk;->a()Labk;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 893
    invoke-static {}, Labk;->a()Labk;

    move-result-object v0

    invoke-virtual {v0}, Labk;->b()V

    .line 895
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Labb;->a(Ljava/util/ArrayList;)V

    .line 896
    invoke-static {}, Lapa;->b()V

    .line 901
    iget-object v0, p0, Lade;->M:Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lade;->M:Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 902
    iget-object v0, p0, Lade;->M:Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog;->dismiss()V

    .line 904
    :cond_2
    return-void

    .line 889
    :cond_3
    const-string/jumbo v0, "other"

    invoke-static {v0}, Labv;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public speechViewUpdateAfterResult()V
    .locals 0

    .prologue
    .line 1424
    return-void
.end method

.method public speechViewUpdateInCancelState()V
    .locals 0

    .prologue
    .line 1410
    return-void
.end method

.method public speechViewUpdateInErrorState(III)Z
    .locals 1
    .param p1, "errTitleId"    # I
    .param p2, "errDetailId"    # I
    .param p3, "errId"    # I

    .prologue
    .line 1415
    const/4 v0, 0x0

    return v0
.end method

.method public speechViewUpdateInInitState()V
    .locals 0

    .prologue
    .line 1345
    return-void
.end method

.method public speechViewUpdateInRecodingState()V
    .locals 0

    .prologue
    .line 1351
    return-void
.end method

.method public speechViewUpdateInSNState()V
    .locals 0

    .prologue
    .line 1420
    return-void
.end method

.method public speechViewUpdateInWaitingResultState()V
    .locals 0

    .prologue
    .line 1363
    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 15

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 931
    const/4 v6, 0x0

    .line 933
    .local v6, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 934
    .end local v6    # "jsonObject":Lorg/json/JSONObject;
    .local v7, "jsonObject":Lorg/json/JSONObject;
    :try_start_1
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 935
    .local v5, "jsonArray_SimName":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .line 936
    .local v3, "isShowSimName":Z
    invoke-virtual {p0}, Lade;->f()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 937
    const-string/jumbo v9, "contactName"

    iget-object v12, p0, Lade;->D:Ljava/lang/String;

    invoke-virtual {v7, v9, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 938
    const-string/jumbo v9, "location"

    iget-object v12, p0, Lade;->E:Ljava/lang/String;

    invoke-virtual {v7, v9, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 939
    const-string/jumbo v9, "phoneNumber"

    iget-object v12, p0, Lade;->F:Ljava/lang/String;

    invoke-virtual {v7, v9, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 941
    const/4 v8, 0x0

    .line 942
    .local v8, "needShowMore":Z
    iget-object v9, p0, Lade;->q:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-le v9, v10, :cond_0

    .line 943
    const/4 v8, 0x1

    .line 945
    :cond_0
    const-string/jumbo v9, "needShowMore"

    invoke-virtual {v7, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 964
    .end local v8    # "needShowMore":Z
    :goto_0
    iget-object v9, p0, Lade;->z:Landroid/content/Context;

    invoke-static {v9}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v9

    invoke-virtual {v9}, Lhl;->c()Z

    move-result v9

    if-nez v9, :cond_6

    const/4 v9, 0x2

    .line 965
    invoke-static {}, Lil;->a()Lil;

    move-result-object v12

    const-string/jumbo v13, "com.iflytek.cmccIFLY_LANGUAGE_CHIOCE_v2"

    const/4 v14, 0x0

    .line 966
    invoke-virtual {v12, v13, v14}, Lil;->b(Ljava/lang/String;I)I

    move-result v12

    if-eq v9, v12, :cond_6

    .line 967
    const-string/jumbo v9, "netError"

    const/4 v12, 0x1

    invoke-virtual {v7, v9, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 971
    :goto_1
    const-string/jumbo v9, "hasDefault"

    iget-boolean v12, p0, Lade;->A:Z

    invoke-virtual {v7, v9, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 972
    const-string/jumbo v9, "smsContent"

    iget-object v12, p0, Lade;->r:Ljava/lang/String;

    invoke-virtual {v7, v9, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 974
    invoke-static {}, Laba;->a()Laba;

    move-result-object v9

    invoke-virtual {v9}, Laba;->b()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 975
    invoke-static {}, Lil;->a()Lil;

    move-result-object v9

    const-string/jumbo v12, "com.iflytek.cmcc.IFLY_SIM_NAME"

    invoke-virtual {v9, v12}, Lil;->c(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 976
    invoke-static {}, Laba;->a()Laba;

    move-result-object v9

    invoke-virtual {v9}, Laba;->g()Z

    move-result v9

    if-eqz v9, :cond_7

    move v3, v10

    .line 978
    :goto_2
    invoke-static {}, Laba;->a()Laba;

    move-result-object v9

    iget-object v10, p0, Lade;->z:Landroid/content/Context;

    sget-object v11, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {v9, v10, v11, v3}, Laba;->a(Landroid/content/Context;Lcom/iflytek/common/adaptation/entity/SimCard;Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 979
    invoke-static {}, Laba;->a()Laba;

    move-result-object v9

    iget-object v10, p0, Lade;->z:Landroid/content/Context;

    sget-object v11, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {v9, v10, v11, v3}, Laba;->a(Landroid/content/Context;Lcom/iflytek/common/adaptation/entity/SimCard;Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 982
    :cond_1
    const-string/jumbo v9, "isMMS"

    iget-boolean v10, p0, Lade;->I:Z

    invoke-virtual {v7, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 984
    const-string/jumbo v9, "taskHandler"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 985
    const-string/jumbo v9, "isSendContactMode"

    iget-boolean v10, p0, Lade;->x:Z

    invoke-virtual {v7, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 986
    const-string/jumbo v9, "isBlessContent"

    iget-object v10, p0, Lade;->t:Ljava/lang/String;

    invoke-static {v10}, Lacw;->a(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v7, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 988
    const-string/jumbo v9, "isDoubleSim"

    invoke-static {}, Laba;->a()Laba;

    move-result-object v10

    invoke-virtual {v10}, Laba;->b()Z

    move-result v10

    invoke-virtual {v7, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 989
    const-string/jumbo v9, "defaultSimCard"

    iget-object v10, p0, Lade;->w:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {v7, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 991
    const-string/jumbo v9, "isShowSimName"

    invoke-virtual {v7, v9, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 992
    const-string/jumbo v9, "SimNameList"

    invoke-virtual {v7, v9, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object v6, v7

    .line 1003
    .end local v3    # "isShowSimName":Z
    .end local v5    # "jsonArray_SimName":Lorg/json/JSONArray;
    .end local v7    # "jsonObject":Lorg/json/JSONObject;
    .restart local v6    # "jsonObject":Lorg/json/JSONObject;
    :goto_3
    return-object v6

    .line 947
    .end local v6    # "jsonObject":Lorg/json/JSONObject;
    .restart local v3    # "isShowSimName":Z
    .restart local v5    # "jsonArray_SimName":Lorg/json/JSONArray;
    .restart local v7    # "jsonObject":Lorg/json/JSONObject;
    :cond_2
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 948
    .local v4, "jsonArray":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .line 949
    .local v2, "i":I
    const/4 v2, 0x0

    :goto_4
    iget-object v9, p0, Lade;->q:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v2, v9, :cond_4

    .line 950
    iget-object v9, p0, Lade;->q:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/iflytek/base/contacts/entities/ContactItem;

    invoke-virtual {v9}, Lcom/iflytek/base/contacts/entities/ContactItem;->c()Ljava/lang/String;

    move-result-object v0

    .line 951
    .local v0, "contactName":Ljava/lang/String;
    sget-object v9, Lade;->p:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "----------------->>> contactName: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    if-eqz v0, :cond_3

    const-string/jumbo v9, ""

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 953
    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 949
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 956
    .end local v0    # "contactName":Ljava/lang/String;
    :cond_4
    if-le v2, v10, :cond_5

    .line 957
    const-string/jumbo v9, "contactNameList"

    invoke-virtual {v7, v9, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 996
    .end local v2    # "i":I
    .end local v3    # "isShowSimName":Z
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    .end local v5    # "jsonArray_SimName":Lorg/json/JSONArray;
    :catch_0
    move-exception v1

    move-object v6, v7

    .line 997
    .end local v7    # "jsonObject":Lorg/json/JSONObject;
    .local v1, "e":Lorg/json/JSONException;
    .restart local v6    # "jsonObject":Lorg/json/JSONObject;
    :goto_5
    sget-object v9, Lade;->p:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    const/4 v6, 0x0

    .line 1002
    goto :goto_3

    .line 959
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v6    # "jsonObject":Lorg/json/JSONObject;
    .restart local v2    # "i":I
    .restart local v3    # "isShowSimName":Z
    .restart local v4    # "jsonArray":Lorg/json/JSONArray;
    .restart local v5    # "jsonArray_SimName":Lorg/json/JSONArray;
    .restart local v7    # "jsonObject":Lorg/json/JSONObject;
    :cond_5
    :try_start_2
    const-string/jumbo v9, "contactName"

    iget-object v12, p0, Lade;->D:Ljava/lang/String;

    invoke-virtual {v7, v9, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 960
    const-string/jumbo v9, "location"

    iget-object v12, p0, Lade;->E:Ljava/lang/String;

    invoke-virtual {v7, v9, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 961
    const-string/jumbo v9, "phoneNumber"

    iget-object v12, p0, Lade;->F:Ljava/lang/String;

    invoke-virtual {v7, v9, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 999
    .end local v2    # "i":I
    .end local v3    # "isShowSimName":Z
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    .end local v5    # "jsonArray_SimName":Lorg/json/JSONArray;
    :catch_1
    move-exception v1

    move-object v6, v7

    .line 1000
    .end local v7    # "jsonObject":Lorg/json/JSONObject;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v6    # "jsonObject":Lorg/json/JSONObject;
    :goto_6
    sget-object v9, Lade;->p:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 969
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v6    # "jsonObject":Lorg/json/JSONObject;
    .restart local v3    # "isShowSimName":Z
    .restart local v5    # "jsonArray_SimName":Lorg/json/JSONArray;
    .restart local v7    # "jsonObject":Lorg/json/JSONObject;
    :cond_6
    :try_start_3
    const-string/jumbo v9, "netError"

    const/4 v12, 0x0

    invoke-virtual {v7, v9, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    :cond_7
    move v3, v11

    .line 976
    goto/16 :goto_2

    .line 999
    .end local v3    # "isShowSimName":Z
    .end local v5    # "jsonArray_SimName":Lorg/json/JSONArray;
    .end local v7    # "jsonObject":Lorg/json/JSONObject;
    .restart local v6    # "jsonObject":Lorg/json/JSONObject;
    :catch_2
    move-exception v1

    goto :goto_6

    .line 996
    :catch_3
    move-exception v1

    goto :goto_5
.end method
