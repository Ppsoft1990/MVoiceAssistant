.class final Laoz$a;
.super Ljava/lang/Object;
.source "IflyMessageNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/content/Intent;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:Ljava/lang/CharSequence;

.field public e:J

.field public f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Intent;Ljava/lang/String;ILjava/lang/CharSequence;JLjava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "clickIntent"    # Landroid/content/Intent;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "iconResourceId"    # I
    .param p4, "ticker"    # Ljava/lang/CharSequence;
    .param p5, "timeMillis"    # J
    .param p7, "title"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/CharSequence;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/base/mms/entities/SmsItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p8, "newMsgItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/base/mms/entities/SmsItem;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Laoz$a;->a:Landroid/content/Intent;

    .line 65
    iput-object p2, p0, Laoz$a;->b:Ljava/lang/String;

    .line 66
    iput p3, p0, Laoz$a;->c:I

    .line 67
    iput-object p4, p0, Laoz$a;->d:Ljava/lang/CharSequence;

    .line 68
    iput-wide p5, p0, Laoz$a;->e:J

    .line 69
    iput-object p7, p0, Laoz$a;->f:Ljava/lang/String;

    .line 70
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;ZLjava/util/ArrayList;IZZ)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isNew"    # Z
    .param p4, "uniqueThreads"    # I
    .param p5, "isShowActivity"    # Z
    .param p6, "isMail"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/base/mms/entities/SmsItem;",
            ">;IZZ)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p3, "newMsgItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/base/mms/entities/SmsItem;>;"
    iget-object v1, p0, Laoz$a;->a:Landroid/content/Intent;

    iget-object v2, p0, Laoz$a;->b:Ljava/lang/String;

    iget v3, p0, Laoz$a;->c:I

    if-eqz p2, :cond_0

    iget-object v5, p0, Laoz$a;->d:Ljava/lang/CharSequence;

    :goto_0
    iget-wide v6, p0, Laoz$a;->e:J

    iget-object v8, p0, Laoz$a;->f:Ljava/lang/String;

    move-object v0, p1

    move v4, p2

    move-object/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p6

    invoke-static/range {v0 .. v12}, Laoz;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;IZLjava/lang/CharSequence;JLjava/lang/String;Ljava/util/ArrayList;IZZ)V

    .line 77
    return-void

    .line 74
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method
