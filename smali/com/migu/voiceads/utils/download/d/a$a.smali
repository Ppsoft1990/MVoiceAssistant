.class Lcom/migu/voiceads/utils/download/d/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/migu/voiceads/utils/download/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:J

.field b:I

.field c:J

.field d:J

.field e:I

.field f:Ljava/lang/String;

.field g:[Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:Landroid/content/Intent;

.field j:Landroid/content/Intent;

.field k:Z


# direct methods
.method constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/migu/voiceads/utils/download/d/a$a;->c:J

    iput-wide v0, p0, Lcom/migu/voiceads/utils/download/d/a$a;->d:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/migu/voiceads/utils/download/d/a$a;->e:I

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/migu/voiceads/utils/download/d/a$a;->g:[Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/migu/voiceads/utils/download/d/a$a;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;JJ)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/migu/voiceads/utils/download/d/a$a;->d:J

    add-long/2addr v0, p4

    iput-wide v0, p0, Lcom/migu/voiceads/utils/download/d/a$a;->d:J

    iget-wide v0, p0, Lcom/migu/voiceads/utils/download/d/a$a;->c:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/migu/voiceads/utils/download/d/a$a;->c:J

    :cond_0
    iget v0, p0, Lcom/migu/voiceads/utils/download/d/a$a;->e:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    iget v0, p0, Lcom/migu/voiceads/utils/download/d/a$a;->e:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/d/a$a;->g:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/migu/voiceads/utils/download/d/a$a;->g:[Ljava/lang/String;

    iget v1, p0, Lcom/migu/voiceads/utils/download/d/a$a;->e:I

    aput-object p1, v0, v1

    :cond_2
    iget v0, p0, Lcom/migu/voiceads/utils/download/d/a$a;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/migu/voiceads/utils/download/d/a$a;->e:I

    goto :goto_0
.end method
