.class public Lcom/iflytek/viafly/mms/ui/SmsContactSaveNotifyActivity;
.super Lcom/iflytek/viafly/ui/activity/BaseDialog;
.source "SmsContactSaveNotifyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/Object;

.field private c:Lcom/iflytek/base/skin/customView/XLinearLayout;

.field private d:Lcom/iflytek/base/skin/customView/XImageView;

.field private e:J

.field private f:Lcom/iflytek/base/skin/customView/XTextView;

.field private g:Lcom/iflytek/base/skin/customView/XTextView;

.field private h:Lcom/iflytek/viafly/mms/ui/TextViewMarquee;

.field private i:Lcom/iflytek/base/skin/customView/XButton;

.field private j:Lcom/iflytek/base/mms/entities/SmsItem;

.field private k:Ljava/lang/String;

.field private l:Landroid/content/pm/PackageManager;

.field private m:Z

.field private n:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/activity/BaseDialog;-><init>()V

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsContactSaveNotifyActivity;->b:Ljava/lang/Object;

    .line 56
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/iflytek/viafly/mms/ui/SmsContactSaveNotifyActivity;->e:J

    .line 63
    const-string/jumbo v0, "com.iflytek.cmcc"

    iput-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsContactSaveNotifyActivity;->k:Ljava/lang/String;

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/viafly/mms/ui/SmsContactSaveNotifyActivity;->m:Z

    .line 226
    new-instance v0, Lcom/iflytek/viafly/mms/ui/SmsContactSaveNotifyActivity$1;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/mms/ui/SmsContactSaveNotifyActivity$1;-><init>(Lcom/iflytek/viafly/mms/ui/SmsContactSaveNotifyActivity;)V

    iput-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsContactSaveNotifyActivity;->n:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 252
    invoke-static {}, Lauf;->a()Lauf;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/mms/ui/SmsContactSaveNotifyActivity;->n:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0, v1}, Lauf;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 253
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsContactSaveNotifyActivity;->n:Landroid/content/BroadcastReceiver;

    .line 257
    invoke-static {p0}, Lcom/iflytek/yd/util/BroadCastSender;->getInstance(Landroid/content/Context;)Lcom/iflytek/yd/util/BroadCastSender;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmcc.MSG_STOP_SMS_REPLY"

    invoke-virtual {v0, v1}, Lcom/iflytek/yd/util/BroadCastSender;->sendBroadCast(Ljava/lang/String;)V

    .line 258
    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 14
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 131
    iget-object v10, p0, Lcom/iflytek/viafly/mms/ui/SmsContactSaveNotifyActivity;->b:Ljava/lang/Object;

    monitor-enter v10

    .line 132
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 133
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 134
    const-string/jumbo v9, "SmsContactSaveNotifyActivity"

    const-string/jumbo v11, "init intent | bundle is null"

    invoke-static {v9, v11}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    monitor-exit v10

    .line 163
    :goto_0
    return-void

    .line 138
    :cond_0
    const-string/jumbo v9, "com.iflytek.cmcc.EXTRA_SMS_SAVE_GALLERY"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 139
    .local v6, "parcelables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/base/mms/entities/SmsItem;>;"
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_2

    .line 140
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/iflytek/base/mms/entities/SmsItem;

    .line 141
    .local v5, "parcelable":Lcom/iflytek/base/mms/entities/SmsItem;
    iput-object v5, p0, Lcom/iflytek/viafly/mms/ui/SmsContactSaveNotifyActivity;->j:Lcom/iflytek/base/mms/entities/SmsItem;

    .line 142
    invoke-virtual {p0}, Lcom/iflytek/viafly/mms/ui/SmsContactSaveNotifyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    iget-object v12, p0, Lcom/iflytek/viafly/mms/ui/SmsContactSaveNotifyActivity;->j:Lcom/iflytek/base/mms/entities/SmsItem;

    invoke-virtual {v12}, Lcom/iflytek/base/mms/entities/SmsItem;->getDate()J

    move-result-wide v12

    invoke-static {v11, v12, v13}, Lbaa;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 143
    .local v1, "date":Ljava/lang/String;
    iget-object v11, p0, Lcom/iflytek/viafly/mms/ui/SmsContactSaveNotifyActivity;->f:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v11, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v11, p0, Lcom/iflytek/viafly/mms/ui/SmsContactSaveNotifyActivity;->j:Lcom/iflytek/base/mms/entities/SmsItem;

    invoke-virtual {v11}, Lcom/iflytek/base/mms/entities/SmsItem;->getBody()Ljava/lang/String;

    move-result-object v8

    .line 145
    .local v8, "txtcontent":Ljava/lang/String;
    const/4 v11, 0x0

    invoke-static {v8, v11}, Labd;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    .line 147
    const-string/jumbo v11, ":"

    const-string/jumbo v12, ": "

    invoke-virtual {v8, v11, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 148
    iget-object v11, p0, Lcom/iflytek/viafly/mms/ui/SmsContactSaveNotifyActivity;->g:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v11, v8}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v11, p0, Lcom/iflytek/viafly/mms/ui/SmsContactSaveNotifyActivity;->j:Lcom/iflytek/base/mms/entities/SmsItem;

    invoke-virtual {v11}, Lcom/iflytek/base/mms/entities/SmsItem;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 150
    .local v3, "namesender":Ljava/lang/String;
    invoke-static {v8}, Labd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 151
    .local v2, "namecontend":Ljava/lang/String;
    iget-object v11, p0, Lcom/iflytek/viafly/mms/ui/SmsContactSaveNotifyActivity;->a:Landroid/content/Context;

    if-eqz v11, :cond_1

    .line 152
    iget-object v11, p0, Lcom/iflytek/viafly/mms/ui/SmsContactSaveNotifyActivity;->a:Landroid/content/Context;

    invoke-static {v11}, Lhe;->a(Landroid/content/Context;)Lhe;

    move-result-object v11

    invoke-virtual {v11, v3}, Lhe;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 153
    .local v4, "nametemple":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 154
    move-object v3, v4

    .line 157
    .end local v4    # "nametemple":Ljava/lang/String;
    :cond_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\u4e3a\u60a8\u53d1\u6765"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\u7684\u53f7\u7801"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 158
    .local v7, "prompt":Ljava/lang/String;
    iget-object v11, p0, Lcom/iflytek/viafly/mms/ui/SmsContactSaveNotifyActivity;->h:Lcom/iflytek/viafly/mms/ui/TextViewMarquee;

    invoke-virtual {v11, v7}, Lcom/iflytek/viafly/mms/ui/TextViewMarquee;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 161
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "date":Ljava/lang/String;
    .end local v2    # "namecontend":Ljava/lang/String;
    .end local v3    # "namesender":Ljava/lang/String;
    .end local v5    # "parcelable":Lcom/iflytek/base/mms/entities/SmsItem;
    .end local v6    # "parcelables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/base/mms/entities/SmsItem;>;"
    .end local v7    # "prompt":Ljava/lang/String;
    .end local v8    # "txtcontent":Ljava/lang/String;
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v6    # "parcelables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/base/mms/entities/SmsItem;>;"
    :cond_2
    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method private a(Lcom/iflytek/base/contacts/entities/ContactSet;Lcom/iflytek/base/mms/entities/SmsItem;)V
    .locals 9
    .param p1, "mContactSet"    # Lcom/iflytek/base/contacts/entities/ContactSet;
    .param p2, "item"    # Lcom/iflytek/base/mms/entities/SmsItem;

    .prologue
    .line 279
    :try_start_0
    iget-object v6, p0, Lcom/iflytek/viafly/mms/ui/SmsContactSaveNotifyActivity;->a:Landroid/content/Context;

    invoke-static {v6}, Lhe;->a(Landroid/content/Context;)Lhe;

    move-result-object v6

    invoke-virtual {p1}, Lcom/iflytek/base/contacts/entities/ContactSet;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/iflytek/base/contacts/entities/ContactSet;->getNumbers()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lhe;->a(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/net/Uri;

    move-result-object v0

    .line 280
    .local v0, "contactUri":Landroid/net/Uri;
    const-string/jumbo v6, "SmsContactSaveNotifyActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "contactUri :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    if-nez v0, :cond_0

    .line 282
    const-string/jumbo v6, "SmsContactSaveNotifyActivity"

    const-string/jumbo v7, "saveAndGo| mContactId = 0 and return"

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    const-string/jumbo v6, "\u4fdd\u5b58\u8054\u7cfb\u4eba\u5931\u8d25"

    const/4 v7, 0x0

    invoke-static {p0, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 311
    .end local v0    # "contactUri":Landroid/net/Uri;
    :goto_0
    return-void

    .line 286
    .restart local v0    # "contactUri":Landroid/net/Uri;
    :cond_0
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 287
    .local v2, "rawContactsId":J
    const-string/jumbo v6, "SmsContactSaveNotifyActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "saveAndGo| rawContactsId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    sget-object v4, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    .line 289
    .local v4, "sdk":Ljava/lang/String;
    const-string/jumbo v6, "SmsContactSaveNotifyActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "phone sdk :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.EDIT"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 292
    .local v5, "viewContactIntent":Landroid/content/Intent;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/16 v7, 0x8

    if-gt v6, v7, :cond_1

    .line 293
    sget-object v6, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 297
    :goto_1
    const/high16 v6, 0x10080000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    :try_start_1
    invoke-virtual {p0, v5}, Lcom/iflytek/viafly/mms/ui/SmsContactSaveNotifyActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 305
    :goto_2
    const/4 v6, 0x1

    :try_start_2
    iput-boolean v6, p0, Lcom/iflytek/viafly/mms/ui/SmsContactSaveNotifyActivity;->m:Z

    .line 306
    invoke-virtual {p0}, Lcom/iflytek/viafly/mms/ui/SmsContactSaveNotifyActivity;->finish()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 308
    .end local v0    # "contactUri":Landroid/net/Uri;
    .end local v2    # "rawContactsId":J
    .end local v4    # "sdk":Ljava/lang/String;
    .end local v5    # "viewContactIntent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 309
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 295
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "contactUri":Landroid/net/Uri;
    .restart local v2    # "rawContactsId":J
    .restart local v4    # "sdk":Ljava/lang/String;
    .restart local v5    # "viewContactIntent":Landroid/content/Intent;
    :cond_1
    :try_start_3
    invoke-virtual {v5, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_1

    .line 302
    :catch_1
    move-exception v1

    .line 303
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v6, "SmsContactSaveNotifyActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2
.end method


# virtual methods
.method public finish()V
    .locals 3

    .prologue
    .line 243
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseDialog;->finish()V

    .line 244
    iget-boolean v0, p0, Lcom/iflytek/viafly/mms/ui/SmsContactSaveNotifyActivity;->m:Z

    if-nez v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsContactSaveNotifyActivity;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Labu;->a(Landroid/content/Context;)Labu;

    move-result-object v0

    const-string/jumbo v1, "SC02051"

    const-string/jumbo v2, "pop_improper_close"

    invoke-virtual {v0, v1, v2}, Labu;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsContactSaveNotifyActivity;->a:Landroid/content/Context;

    invoke-static {v0}, Lhu;->a(Landroid/content/Context;)V

    .line 248
    invoke-direct {p0}, Lcom/iflytek/viafly/mms/ui/SmsContactSaveNotifyActivity;->a()V

    .line 249
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 168
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/iflytek/viafly/mms/ui/SmsContactSaveNotifyActivity;->e:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x320

    cmp-long v6, v6, v8

    if-gez v6, :cond_0

    .line 169
    const-string/jumbo v6, "SmsContactSaveNotifyActivity"

    const-string/jumbo v7, "onClick too much"

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :goto_0
    return-void

    .line 172
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/iflytek/viafly/mms/ui/SmsContactSaveNotifyActivity;->e:J

    .line 173
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    goto :goto_0

    .line 175
    :sswitch_0
    iget-object v6, p0, Lcom/iflytek/viafly/mms/ui/SmsContactSaveNotifyActivity;->a:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Labu;->a(Landroid/content/Context;)Labu;

    move-result-object v6

    const-string/jumbo v7, "SC02051"

    const-string/jumbo v8, "pop_click_close_btn"

    invoke-virtual {v6, v7, v8}, Labu;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iput-boolean v11, p0, Lcom/iflytek/viafly/mms/ui/SmsContactSaveNotifyActivity;->m:Z

    .line 177
    invoke-virtual {p0}, Lcom/iflytek/viafly/mms/ui/SmsContactSaveNotifyActivity;->finish()V

    goto :goto_0

    .line 180
    :sswitch_1
    iget-object v6, p0, Lcom/iflytek/viafly/mms/ui/SmsContactSaveNotifyActivity;->a:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Labu;->a(Landroid/content/Context;)Labu;

    move-result-object v6

    const-string/jumbo v7, "SC02051"

    const-string/jumbo v8, "pop_click_save_contact_btn"

    invoke-virtual {v6, v7, v8}, Labu;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object v6, p0, Lcom/iflytek/viafly/mms/ui/SmsContactSaveNotifyActivity;->j:Lcom/iflytek/base/mms/entities/SmsItem;

    invoke-virtual {v6}, Lcom/iflytek/base/mms/entities/SmsItem;->getBody()Ljava/lang/String;

    move-result-object v5

    .line 185
    .local v5, "txtcontent":Ljava/lang/String;
    invoke-static {}, Labb;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 187
    invoke-static {v5, v11}, Labd;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    .line 188
    invoke-static {v5}, Labd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 189
    .local v3, "name":Ljava/lang/String;
    invoke-static {v5}, Labd;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 190
    .local v4, "numberlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v3, :cond_1

    if-nez v4, :cond_2

    .line 191
    :cond_1
    const-string/jumbo v6, "\u975e\u7075\u7280\u8f6c\u53d1\u53f7\u7801"

    invoke-static {p0, v6, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 193
    :cond_2
    const/4 v1, 0x0

    .line 194
    .local v1, "isNumberLegal":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_5

    .line 195
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lcom/iflytek/viafly/util/IflyStringUtil;->a(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 196
    :cond_3
    const/4 v1, 0x1

    .line 194
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 201
    :cond_5
    if-eqz v1, :cond_6

    .line 202
    new-instance v2, Lcom/iflytek/base/contacts/entities/ContactSet;

    const/4 v6, 0x0

    invoke-direct {v2, v3, v6}, Lcom/iflytek/base/contacts/entities/ContactSet;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    .local v2, "mContactSet":Lcom/iflytek/base/contacts/entities/ContactSet;
    invoke-virtual {v2, v4}, Lcom/iflytek/base/contacts/entities/ContactSet;->setNumbers(Ljava/util/ArrayList;)V

    .line 204
    invoke-static {v2}, Labb;->a(Lcom/iflytek/base/contacts/entities/ContactSet;)V

    .line 205
    invoke-static {v11}, Labb;->b(Z)V

    .line 208
    iget-object v6, p0, Lcom/iflytek/viafly/mms/ui/SmsContactSaveNotifyActivity;->j:Lcom/iflytek/base/mms/entities/SmsItem;

    invoke-direct {p0, v2, v6}, Lcom/iflytek/viafly/mms/ui/SmsContactSaveNotifyActivity;->a(Lcom/iflytek/base/contacts/entities/ContactSet;Lcom/iflytek/base/mms/entities/SmsItem;)V

    goto/16 :goto_0

    .line 210
    .end local v2    # "mContactSet":Lcom/iflytek/base/contacts/entities/ContactSet;
    :cond_6
    const-string/jumbo v6, "\u975e\u7075\u7280\u8f6c\u53d1\u53f7\u7801"

    invoke-static {p0, v6, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 214
    .end local v0    # "i":I
    .end local v1    # "isNumberLegal":Z
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "numberlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_7
    const-string/jumbo v6, "\u975e\u7075\u7280\u8f6c\u53d1\u53f7\u7801"

    invoke-static {p0, v6, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 173
    :sswitch_data_0
    .sparse-switch
        0x7f0b06a1 -> :sswitch_0
        0x7f0b06a8 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 69
    iput-object p0, p0, Lcom/iflytek/viafly/mms/ui/SmsContactSaveNotifyActivity;->a:Landroid/content/Context;

    .line 70
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsContactSaveNotifyActivity;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsContactSaveNotifyActivity;->l:Landroid/content/pm/PackageManager;

    .line 73
    invoke-super {p0, p1}, Lcom/iflytek/viafly/ui/activity/BaseDialog;->onCreate(Landroid/os/Bundle;)V

    .line 74
    return-void
.end method

.method protected onStart()V
    .locals 4

    .prologue
    .line 78
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseDialog;->onStart()V

    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Labv;->a(J)V

    .line 80
    const-string/jumbo v1, "SmsContactSaveNotifyActivity"

    const-string/jumbo v2, "onStart"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 82
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.iflytek.cmcc.CALL_RECEIVE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 83
    const-string/jumbo v1, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 84
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 85
    const-string/jumbo v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    invoke-static {}, Lauf;->a()Lauf;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/mms/ui/SmsContactSaveNotifyActivity;->n:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v2, v0}, Lauf;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 87
    return-void
.end method

.method protected registerListener()V
    .locals 0

    .prologue
    .line 224
    return-void
.end method

.method protected setView()V
    .locals 4

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/iflytek/viafly/mms/ui/SmsContactSaveNotifyActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {}, Lcom/iflytek/base/skin/ThemeManager;->getInstance()Lcom/iflytek/base/skin/ThemeManager;

    move-result-object v1

    const-string/jumbo v2, "image.dlg_bg"

    sget-object v3, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/base/skin/ThemeManager;->getDrawable(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 93
    const v0, 0x7f030127

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/mms/ui/SmsContactSaveNotifyActivity;->setContentView(I)V

    .line 94
    const v0, 0x7f0b06a6

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/mms/ui/SmsContactSaveNotifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XTextView;

    iput-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsContactSaveNotifyActivity;->f:Lcom/iflytek/base/skin/customView/XTextView;

    .line 95
    const v0, 0x7f0b06a4

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/mms/ui/SmsContactSaveNotifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XTextView;

    iput-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsContactSaveNotifyActivity;->g:Lcom/iflytek/base/skin/customView/XTextView;

    .line 96
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsContactSaveNotifyActivity;->g:Lcom/iflytek/base/skin/customView/XTextView;

    new-instance v1, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v1}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 97
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsContactSaveNotifyActivity;->g:Lcom/iflytek/base/skin/customView/XTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setFocusable(Z)V

    .line 98
    const v0, 0x7f0b06a3

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/mms/ui/SmsContactSaveNotifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/mms/ui/TextViewMarquee;

    iput-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsContactSaveNotifyActivity;->h:Lcom/iflytek/viafly/mms/ui/TextViewMarquee;

    .line 99
    const v0, 0x7f0b06a8

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/mms/ui/SmsContactSaveNotifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XButton;

    iput-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsContactSaveNotifyActivity;->i:Lcom/iflytek/base/skin/customView/XButton;

    .line 100
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsContactSaveNotifyActivity;->i:Lcom/iflytek/base/skin/customView/XButton;

    invoke-virtual {v0, p0}, Lcom/iflytek/base/skin/customView/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    const v0, 0x7f0b06a1

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/mms/ui/SmsContactSaveNotifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XLinearLayout;

    iput-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsContactSaveNotifyActivity;->c:Lcom/iflytek/base/skin/customView/XLinearLayout;

    .line 102
    const v0, 0x7f0b06a2

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/mms/ui/SmsContactSaveNotifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XImageView;

    iput-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsContactSaveNotifyActivity;->d:Lcom/iflytek/base/skin/customView/XImageView;

    .line 103
    iget-object v0, p0, Lcom/iflytek/viafly/mms/ui/SmsContactSaveNotifyActivity;->c:Lcom/iflytek/base/skin/customView/XLinearLayout;

    invoke-virtual {v0, p0}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    invoke-virtual {p0}, Lcom/iflytek/viafly/mms/ui/SmsContactSaveNotifyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/mms/ui/SmsContactSaveNotifyActivity;->a(Landroid/content/Intent;)V

    .line 128
    return-void
.end method
