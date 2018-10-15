.class Lm$j;
.super Ljava/lang/Object;
.source "NotificationCompat.java"

# interfaces
.implements Lm$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "j"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lm$d;)Landroid/app/Notification;
    .locals 21
    .param p1, "b"    # Lm$d;

    .prologue
    .line 117
    new-instance v1, Lp;

    move-object/from16 v0, p1

    iget-object v2, v0, Lm$d;->a:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-object v3, v0, Lm$d;->r:Landroid/app/Notification;

    move-object/from16 v0, p1

    iget-object v4, v0, Lm$d;->b:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v5, v0, Lm$d;->c:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v6, v0, Lm$d;->h:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v7, v0, Lm$d;->f:Landroid/widget/RemoteViews;

    move-object/from16 v0, p1

    iget v8, v0, Lm$d;->i:I

    move-object/from16 v0, p1

    iget-object v9, v0, Lm$d;->d:Landroid/app/PendingIntent;

    move-object/from16 v0, p1

    iget-object v10, v0, Lm$d;->e:Landroid/app/PendingIntent;

    move-object/from16 v0, p1

    iget-object v11, v0, Lm$d;->g:Landroid/graphics/Bitmap;

    move-object/from16 v0, p1

    iget v12, v0, Lm$d;->n:I

    move-object/from16 v0, p1

    iget v13, v0, Lm$d;->o:I

    move-object/from16 v0, p1

    iget-boolean v14, v0, Lm$d;->p:Z

    move-object/from16 v0, p1

    iget-boolean v15, v0, Lm$d;->k:Z

    move-object/from16 v0, p1

    iget v0, v0, Lm$d;->j:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lm$d;->m:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    invoke-direct/range {v1 .. v17}, Lp;-><init>(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZZILjava/lang/CharSequence;)V

    .line 122
    .local v1, "jbBuilder":Lp;
    move-object/from16 v0, p1

    iget-object v2, v0, Lm$d;->q:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lm$a;

    .line 123
    .local v18, "action":Lm$a;
    move-object/from16 v0, v18

    iget v2, v0, Lm$a;->a:I

    move-object/from16 v0, v18

    iget-object v3, v0, Lm$a;->b:Ljava/lang/CharSequence;

    move-object/from16 v0, v18

    iget-object v4, v0, Lm$a;->c:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2, v3, v4}, Lp;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 125
    .end local v18    # "action":Lm$a;
    :cond_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lm$d;->l:Lm$k;

    if-eqz v2, :cond_1

    .line 126
    move-object/from16 v0, p1

    iget-object v2, v0, Lm$d;->l:Lm$k;

    instance-of v2, v2, Lm$c;

    if-eqz v2, :cond_2

    .line 127
    move-object/from16 v0, p1

    iget-object v0, v0, Lm$d;->l:Lm$k;

    move-object/from16 v20, v0

    check-cast v20, Lm$c;

    .line 128
    .local v20, "style":Lm$c;
    move-object/from16 v0, v20

    iget-object v2, v0, Lm$c;->d:Ljava/lang/CharSequence;

    move-object/from16 v0, v20

    iget-boolean v3, v0, Lm$c;->f:Z

    move-object/from16 v0, v20

    iget-object v4, v0, Lm$c;->e:Ljava/lang/CharSequence;

    move-object/from16 v0, v20

    iget-object v5, v0, Lm$c;->a:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, v3, v4, v5}, Lp;->a(Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 148
    .end local v20    # "style":Lm$c;
    :cond_1
    :goto_1
    invoke-virtual {v1}, Lp;->a()Landroid/app/Notification;

    move-result-object v2

    return-object v2

    .line 132
    :cond_2
    move-object/from16 v0, p1

    iget-object v2, v0, Lm$d;->l:Lm$k;

    instance-of v2, v2, Lm$e;

    if-eqz v2, :cond_3

    .line 133
    move-object/from16 v0, p1

    iget-object v0, v0, Lm$d;->l:Lm$k;

    move-object/from16 v20, v0

    check-cast v20, Lm$e;

    .line 134
    .local v20, "style":Lm$e;
    move-object/from16 v0, v20

    iget-object v2, v0, Lm$e;->d:Ljava/lang/CharSequence;

    move-object/from16 v0, v20

    iget-boolean v3, v0, Lm$e;->f:Z

    move-object/from16 v0, v20

    iget-object v4, v0, Lm$e;->e:Ljava/lang/CharSequence;

    move-object/from16 v0, v20

    iget-object v5, v0, Lm$e;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3, v4, v5}, Lp;->a(Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/util/ArrayList;)V

    goto :goto_1

    .line 138
    .end local v20    # "style":Lm$e;
    :cond_3
    move-object/from16 v0, p1

    iget-object v2, v0, Lm$d;->l:Lm$k;

    instance-of v2, v2, Lm$b;

    if-eqz v2, :cond_1

    .line 139
    move-object/from16 v0, p1

    iget-object v0, v0, Lm$d;->l:Lm$k;

    move-object/from16 v20, v0

    check-cast v20, Lm$b;

    .line 140
    .local v20, "style":Lm$b;
    move-object/from16 v0, v20

    iget-object v2, v0, Lm$b;->d:Ljava/lang/CharSequence;

    move-object/from16 v0, v20

    iget-boolean v3, v0, Lm$b;->f:Z

    move-object/from16 v0, v20

    iget-object v4, v0, Lm$b;->e:Ljava/lang/CharSequence;

    move-object/from16 v0, v20

    iget-object v5, v0, Lm$b;->a:Landroid/graphics/Bitmap;

    move-object/from16 v0, v20

    iget-object v6, v0, Lm$b;->b:Landroid/graphics/Bitmap;

    move-object/from16 v0, v20

    iget-boolean v7, v0, Lm$b;->c:Z

    invoke-virtual/range {v1 .. v7}, Lp;->a(Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)V

    goto :goto_1
.end method
