.class Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity$2;
.super Ljava/lang/Object;
.source "SmsChangeContactInfoToSendActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;

    .prologue
    .line 252
    iput-object p1, p0, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity$2;->a:Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 18
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/base/contacts/entities/ContactItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 294
    const/4 v11, 0x0

    .line 295
    .local v11, "cursor":Landroid/database/Cursor;
    const-string/jumbo v15, ""

    .line 296
    .local v15, "number":Ljava/lang/String;
    const-string/jumbo v12, ""

    .line 297
    .local v12, "disPlayName":Ljava/lang/String;
    const-wide/16 v8, -0x1

    .line 298
    .local v8, "contactId":J
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 299
    .local v10, "contactItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/base/contacts/entities/ContactItem;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity$2;->a:Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;

    invoke-static {v2}, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;->d(Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lhe;->a(Landroid/content/Context;)Lhe;

    move-result-object v2

    invoke-virtual {v2}, Lhe;->a()[Ljava/lang/String;

    move-result-object v4

    .line 302
    .local v4, "projection":[Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity$2;->a:Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;

    invoke-static {v2}, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;->d(Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity$2;->a:Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;

    invoke-static {v3}, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;->d(Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lhe;->a(Landroid/content/Context;)Lhe;

    move-result-object v3

    invoke-virtual {v3}, Lhe;->c()Landroid/net/Uri;

    move-result-object v3

    const-string/jumbo v5, "display_name like ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "%"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 304
    invoke-static/range {p1 .. p1}, Lcom/iflytek/viafly/util/IflyStringUtil;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "%"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v6, v7

    const/4 v7, 0x4

    aget-object v7, v4, v7

    .line 302
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 305
    if-nez v11, :cond_1

    .line 306
    const-string/jumbo v2, "SmsAddContactsActivity"

    const-string/jumbo v3, "fuzzyQueryContactItems ----------------cursor is null"

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    if-eqz v11, :cond_0

    .line 331
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-object v10

    .line 308
    :cond_1
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_2

    .line 309
    const-string/jumbo v2, "SmsAddContactsActivity"

    const-string/jumbo v3, "fuzzyQueryContactItems ----------------cursor size is 0"

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 330
    if-eqz v11, :cond_0

    .line 331
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 312
    :cond_2
    :goto_1
    :try_start_2
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 313
    const/4 v2, 0x0

    aget-object v2, v4, v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/iflytek/viafly/util/PhoneNumberUtil;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 315
    const/4 v2, 0x1

    aget-object v2, v4, v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 316
    const/4 v2, 0x4

    aget-object v2, v4, v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 317
    new-instance v14, Lcom/iflytek/base/contacts/entities/ContactItem;

    invoke-direct {v14}, Lcom/iflytek/base/contacts/entities/ContactItem;-><init>()V

    .line 318
    .local v14, "item":Lcom/iflytek/base/contacts/entities/ContactItem;
    invoke-virtual {v14, v12}, Lcom/iflytek/base/contacts/entities/ContactItem;->b(Ljava/lang/String;)V

    .line 319
    invoke-virtual {v14, v15}, Lcom/iflytek/base/contacts/entities/ContactItem;->c(Ljava/lang/String;)V

    .line 320
    invoke-virtual {v14, v8, v9}, Lcom/iflytek/base/contacts/entities/ContactItem;->a(J)V

    .line 321
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 326
    .end local v14    # "item":Lcom/iflytek/base/contacts/entities/ContactItem;
    :catch_0
    move-exception v13

    .line 327
    .local v13, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 330
    if-eqz v11, :cond_0

    .line 331
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 323
    .end local v13    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_4
    const-string/jumbo v2, "SmsAddContactsActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "fuzzyQueryContactItems ----------------cursor size = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 330
    if-eqz v11, :cond_0

    .line 331
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 330
    :catchall_0
    move-exception v2

    if-eqz v11, :cond_4

    .line 331
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v2
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 10
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 266
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 267
    .local v4, "text":Ljava/lang/String;
    const-string/jumbo v5, "SmsAddContactsActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "------------>>> afterTextChanged() s = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " length="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4

    .line 269
    iget-object v5, p0, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity$2;->a:Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;

    invoke-static {v5}, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;->h(Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;)Lcom/iflytek/base/skin/customView/XEditText;

    move-result-object v5

    const-string/jumbo v6, "style_contact_search_name_extra_extra"

    sget-object v7, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v5, v6, v7}, Lcom/iflytek/base/skin/customView/XEditText;->setCustomStyle(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 270
    invoke-direct {p0, v4}, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity$2;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 271
    .local v0, "fuzzySearchContactItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/base/contacts/entities/ContactItem;>;"
    iget-object v5, p0, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity$2;->a:Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;

    invoke-static {v5}, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;->i(Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 272
    iget-object v5, p0, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity$2;->a:Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;

    invoke-static {v5}, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;->i(Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 274
    :cond_0
    const-wide/16 v2, -0x1

    .line 275
    .local v2, "lastContactId":J
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/base/contacts/entities/ContactItem;

    .line 276
    .local v1, "item":Lcom/iflytek/base/contacts/entities/ContactItem;
    invoke-virtual {v1}, Lcom/iflytek/base/contacts/entities/ContactItem;->b()J

    move-result-wide v6

    cmp-long v6, v6, v2

    if-eqz v6, :cond_1

    .line 277
    invoke-virtual {v1}, Lcom/iflytek/base/contacts/entities/ContactItem;->b()J

    move-result-wide v2

    .line 278
    iget-object v6, p0, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity$2;->a:Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;

    invoke-static {v6}, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;->i(Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 281
    .end local v1    # "item":Lcom/iflytek/base/contacts/entities/ContactItem;
    :cond_2
    iget-object v5, p0, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity$2;->a:Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;

    invoke-static {v5}, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;->i(Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 282
    iget-object v5, p0, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity$2;->a:Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;

    invoke-static {v5}, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;->f(Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;)Landroid/widget/ListView;

    move-result-object v5

    new-instance v6, Laoy;

    iget-object v7, p0, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity$2;->a:Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;

    iget-object v8, p0, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity$2;->a:Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;

    invoke-static {v8}, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;->i(Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;)Ljava/util/ArrayList;

    move-result-object v8

    const v9, 0x7f030076

    invoke-direct {v6, v7, v8, v9}, Laoy;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 283
    iget-object v5, p0, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity$2;->a:Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;->a(Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;Z)Z

    .line 291
    .end local v0    # "fuzzySearchContactItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/base/contacts/entities/ContactItem;>;"
    .end local v2    # "lastContactId":J
    :cond_3
    :goto_1
    return-void

    .line 287
    :cond_4
    iget-object v5, p0, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity$2;->a:Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;

    invoke-static {v5}, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;->h(Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;)Lcom/iflytek/base/skin/customView/XEditText;

    move-result-object v5

    const-string/jumbo v6, "style_contact_search_name_extra"

    sget-object v7, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v5, v6, v7}, Lcom/iflytek/base/skin/customView/XEditText;->setCustomStyle(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 288
    iget-object v5, p0, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity$2;->a:Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;

    invoke-static {v5}, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;->f(Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;)Landroid/widget/ListView;

    move-result-object v5

    iget-object v6, p0, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity$2;->a:Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;

    invoke-static {v6}, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;->e(Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;)Laow;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 289
    iget-object v5, p0, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity$2;->a:Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;->a(Lcom/iflytek/viafly/mms/ui/SmsChangeContactInfoToSendActivity;Z)Z

    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 262
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 257
    return-void
.end method
