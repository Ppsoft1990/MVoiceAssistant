.class public Lcom/migu/voiceads/utils/download/c/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/migu/voiceads/utils/download/c/a/c;
.implements Lcom/migu/voiceads/utils/download/c/b/a;


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static b:Ljava/util/Random;


# instance fields
.field private c:J

.field private d:I

.field private e:Lcom/migu/voiceads/utils/download/c/c/a;

.field private f:Z

.field private g:Lcom/migu/voiceads/utils/download/c/a/a;

.field private h:J

.field private i:J

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Z

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/io/FileOutputStream;

.field private p:J

.field private q:Ljava/lang/String;

.field private r:J

.field private s:J

.field private t:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string/jumbo v0, "attachment;\\s*filename\\s*=\\s*\"([^\"]*)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/migu/voiceads/utils/download/c/a/b;->a:Ljava/util/regex/Pattern;

    new-instance v0, Ljava/util/Random;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    sput-object v0, Lcom/migu/voiceads/utils/download/c/a/b;->b:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/migu/voiceads/utils/download/c/a/b;-><init>(JILandroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(JILandroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/migu/voiceads/utils/download/c/a/b;->c:J

    iput p3, p0, Lcom/migu/voiceads/utils/download/c/a/b;->d:I

    iput-object p4, p0, Lcom/migu/voiceads/utils/download/c/a/b;->t:Landroid/content/Context;

    new-instance v0, Lcom/migu/voiceads/utils/download/c/a/a;

    invoke-direct {v0, p4, p0}, Lcom/migu/voiceads/utils/download/c/a/a;-><init>(Landroid/content/Context;Lcom/migu/voiceads/utils/download/c/a/c;)V

    iput-object v0, p0, Lcom/migu/voiceads/utils/download/c/a/b;->g:Lcom/migu/voiceads/utils/download/c/a/a;

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    sget-object v0, Lcom/migu/voiceads/utils/download/c/a/b;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    const/16 v1, 0x2e

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/migu/voiceads/utils/download/c/a/b;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/16 v4, 0x3f

    const/16 v3, 0x2f

    const/4 v1, 0x0

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/migu/voiceads/utils/download/c/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_4

    if-eqz p2, :cond_4

    invoke-static {p2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string/jumbo v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_4

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-lez v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    invoke-static {p0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_2

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-lez v2, :cond_2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    const-string/jumbo v0, "downloadfile"

    :cond_3
    const-string/jumbo v1, "[^a-zA-Z0-9\\.\\-_]+"

    const-string/jumbo v2, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "text/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "text/html"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v0, ".html"

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    if-eqz p1, :cond_1

    const-string/jumbo v0, ".txt"

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_1

    const-string/jumbo v0, ".bin"

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {p1, p2, p3}, Lcom/migu/voiceads/utils/download/c/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v0, 0x2e

    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    if-gez v2, :cond_1

    invoke-static {p4, v5}, Lcom/migu/voiceads/utils/download/c/a/b;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    :goto_0
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0, p5}, Lcom/migu/voiceads/utils/download/c/a/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    aput-object v1, v2, v4

    aput-object v0, v2, v5

    return-object v2

    :cond_1
    invoke-static {p4, v1, v2}, Lcom/migu/voiceads/utils/download/c/a/b;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move v2, v0

    move v1, v0

    :goto_1
    const v0, 0x3b9aca00

    if-lt v2, v0, :cond_2

    const/4 p0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_2
    const/16 v4, 0x9

    if-lt v0, v4, :cond_3

    mul-int/lit8 v0, v2, 0xa

    move v2, v0

    goto :goto_1

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_4

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_4
    sget-object v4, Lcom/migu/voiceads/utils/download/c/a/b;->b:Ljava/util/Random;

    invoke-virtual {v4, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private g()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/c/a/b;->o:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/migu/voiceads/utils/download/c/a/b;->o:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object v1, p0, Lcom/migu/voiceads/utils/download/c/a/b;->o:Ljava/io/FileOutputStream;

    :cond_0
    iput-object v1, p0, Lcom/migu/voiceads/utils/download/c/a/b;->k:Ljava/lang/String;

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 9

    iget-boolean v0, p0, Lcom/migu/voiceads/utils/download/c/a/b;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x2

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/migu/voiceads/utils/download/c/a/b;->n:Ljava/lang/String;

    const-string/jumbo v5, ".tmp"

    move-object v1, p4

    move-object v2, p6

    move-object/from16 v3, p7

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/migu/voiceads/utils/download/c/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/migu/voiceads/utils/download/c/a/b;->k:Ljava/lang/String;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/migu/voiceads/utils/download/c/a/b;->k:Ljava/lang/String;

    iget-object v1, p0, Lcom/migu/voiceads/utils/download/c/a/b;->k:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string/jumbo v0, "file name is null"

    iput-object v0, p0, Lcom/migu/voiceads/utils/download/c/a/b;->q:Ljava/lang/String;

    const v0, 0xc3c18

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/migu/voiceads/utils/download/c/a/b;->k:Ljava/lang/String;

    const-string/jumbo v2, ".tmp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/migu/voiceads/utils/download/c/a/b;->k:Ljava/lang/String;

    :cond_2
    const/4 v1, 0x1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/migu/voiceads/utils/download/c/a/b;->m:Ljava/lang/String;

    invoke-static {}, Lcom/migu/voiceads/utils/download/e/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/migu/voiceads/utils/download/e/a/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/migu/voiceads/utils/download/e/a/a;->a(Ljava/lang/String;)J

    move-result-wide v0

    :goto_1
    iget-wide v2, p0, Lcom/migu/voiceads/utils/download/c/a/b;->h:J

    sub-long v2, p1, v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "availableSpace is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", while left size is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/migu/voiceads/utils/download/c/a/b;->h:J

    sub-long v2, p1, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/migu/voiceads/utils/download/c/a/b;->q:Ljava/lang/String;

    const v0, 0xc3c0a

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/migu/voiceads/utils/download/c/a/b;->t:Landroid/content/Context;

    invoke-static {v0}, Lcom/migu/voiceads/utils/download/e/a/a;->a(Landroid/content/Context;)J

    move-result-wide v0

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/migu/voiceads/utils/download/c/a/b;->n:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_5
    iget-boolean v0, p0, Lcom/migu/voiceads/utils/download/c/a/b;->f:Z

    if-eqz v0, :cond_6

    const/4 v0, -0x2

    goto/16 :goto_0

    :cond_6
    :try_start_0
    iput-wide p1, p0, Lcom/migu/voiceads/utils/download/c/a/b;->i:J

    iget-wide v0, p0, Lcom/migu/voiceads/utils/download/c/a/b;->i:J

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/migu/voiceads/utils/download/c/a/b;->r:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/migu/voiceads/utils/download/c/a/b;->p:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/migu/voiceads/utils/download/c/a/b;->s:J

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/migu/voiceads/utils/download/c/a/b;->k:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-nez v1, :cond_7

    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_7
    :try_start_2
    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    iput-object v1, p0, Lcom/migu/voiceads/utils/download/c/a/b;->o:Ljava/io/FileOutputStream;

    iget-boolean v0, p0, Lcom/migu/voiceads/utils/download/c/a/b;->f:Z

    if-eqz v0, :cond_8

    const/4 v0, -0x2

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/migu/voiceads/utils/download/c/a/b;->q:Ljava/lang/String;

    const v0, 0xc3c0b

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/migu/voiceads/utils/download/c/a/b;->e:Lcom/migu/voiceads/utils/download/c/c/a;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/migu/voiceads/utils/download/c/a/b;->e:Lcom/migu/voiceads/utils/download/c/c/a;

    iget-object v5, p0, Lcom/migu/voiceads/utils/download/c/a/b;->k:Ljava/lang/String;

    move-wide v2, p1

    move-object v4, p3

    move-object v6, p5

    move-object v7, p0

    invoke-interface/range {v1 .. v7}, Lcom/migu/voiceads/utils/download/c/c/a;->a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/migu/voiceads/utils/download/c/b/a;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/migu/voiceads/utils/download/c/a/b;->q:Ljava/lang/String;

    const v0, 0xc3c0b

    goto/16 :goto_0
.end method

.method public a([BI)I
    .locals 8

    const/4 v0, 0x0

    const/4 v1, -0x2

    iget-boolean v2, p0, Lcom/migu/voiceads/utils/download/c/a/b;->f:Z

    if-eqz v2, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/migu/voiceads/utils/download/c/a/b;->o:Ljava/io/FileOutputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3, p2}, Ljava/io/FileOutputStream;->write([BII)V

    iget-boolean v2, p0, Lcom/migu/voiceads/utils/download/c/a/b;->f:Z

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/migu/voiceads/utils/download/c/a/b;->o:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    iget-boolean v2, p0, Lcom/migu/voiceads/utils/download/c/a/b;->f:Z

    if-eqz v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    iget-wide v2, p0, Lcom/migu/voiceads/utils/download/c/a/b;->h:J

    int-to-long v4, p2

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/migu/voiceads/utils/download/c/a/b;->h:J

    iget-object v1, p0, Lcom/migu/voiceads/utils/download/c/a/b;->e:Lcom/migu/voiceads/utils/download/c/c/a;

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/migu/voiceads/utils/download/c/a/b;->h:J

    iget-wide v4, p0, Lcom/migu/voiceads/utils/download/c/a/b;->s:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/migu/voiceads/utils/download/c/a/b;->r:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/migu/voiceads/utils/download/c/a/b;->p:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x28

    cmp-long v1, v4, v6

    if-ltz v1, :cond_0

    iget-wide v4, p0, Lcom/migu/voiceads/utils/download/c/a/b;->h:J

    const-wide/16 v6, 0x64

    mul-long/2addr v4, v6

    iget-wide v6, p0, Lcom/migu/voiceads/utils/download/c/a/b;->i:J

    div-long/2addr v4, v6

    long-to-int v1, v4

    iget-object v4, p0, Lcom/migu/voiceads/utils/download/c/a/b;->e:Lcom/migu/voiceads/utils/download/c/c/a;

    iget-wide v6, p0, Lcom/migu/voiceads/utils/download/c/a/b;->h:J

    invoke-interface {v4, v6, v7, v1, p0}, Lcom/migu/voiceads/utils/download/c/c/a;->a(JILcom/migu/voiceads/utils/download/c/b/a;)V

    iget-wide v4, p0, Lcom/migu/voiceads/utils/download/c/a/b;->h:J

    iput-wide v4, p0, Lcom/migu/voiceads/utils/download/c/a/b;->s:J

    iput-wide v2, p0, Lcom/migu/voiceads/utils/download/c/a/b;->p:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    const v0, 0xc3c17

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/migu/voiceads/utils/download/c/a/b;->q:Ljava/lang/String;

    goto :goto_0
.end method

.method public declared-synchronized a()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/migu/voiceads/utils/download/c/a/b;->f:Z

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/c/a/b;->g:Lcom/migu/voiceads/utils/download/c/a/a;

    invoke-virtual {v0}, Lcom/migu/voiceads/utils/download/c/a/a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(ILjava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/migu/voiceads/utils/download/c/a/b;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/c/a/b;->e:Lcom/migu/voiceads/utils/download/c/c/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/c/a/b;->e:Lcom/migu/voiceads/utils/download/c/c/a;

    invoke-interface {v0, p1, p2, p0}, Lcom/migu/voiceads/utils/download/c/c/a;->a(ILjava/lang/String;Lcom/migu/voiceads/utils/download/c/b/a;)V

    :cond_0
    invoke-direct {p0}, Lcom/migu/voiceads/utils/download/c/a/b;->g()V

    return-void
.end method

.method public a(Lcom/migu/voiceads/utils/download/c/c/a;)V
    .locals 0

    iput-object p1, p0, Lcom/migu/voiceads/utils/download/c/a/b;->e:Lcom/migu/voiceads/utils/download/c/c/a;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 6

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/migu/voiceads/utils/download/c/a/b;->q:Ljava/lang/String;

    const-wide/16 v2, 0x0

    iput-object v0, p0, Lcom/migu/voiceads/utils/download/c/a/b;->k:Ljava/lang/String;

    if-eqz p2, :cond_1

    move-object p3, p2

    :goto_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2

    iput-object p3, p0, Lcom/migu/voiceads/utils/download/c/a/b;->n:Ljava/lang/String;

    :cond_0
    :goto_1
    iput-boolean p4, p0, Lcom/migu/voiceads/utils/download/c/a/b;->l:Z

    iput-wide v2, p0, Lcom/migu/voiceads/utils/download/c/a/b;->h:J

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/c/a/b;->g:Lcom/migu/voiceads/utils/download/c/a/a;

    const/16 v5, 0x1000

    move-object v1, p1

    move-object v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/migu/voiceads/utils/download/c/a/a;->a(Ljava/lang/String;JLjava/lang/String;I)V

    return-void

    :cond_1
    iput-object p3, p0, Lcom/migu/voiceads/utils/download/c/a/b;->j:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/migu/voiceads/utils/download/c/a/b;->n:Ljava/lang/String;

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    iput-object p3, p0, Lcom/migu/voiceads/utils/download/c/a/b;->k:Ljava/lang/String;

    goto :goto_1

    :cond_3
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iput-object p3, p0, Lcom/migu/voiceads/utils/download/c/a/b;->n:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/migu/voiceads/utils/download/c/a/b;->n:Ljava/lang/String;

    goto :goto_1
.end method

.method public a(Ljava/lang/String;[BLjava/lang/String;Z)V
    .locals 4

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/migu/voiceads/utils/download/c/a/b;->q:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-object v2, p0, Lcom/migu/voiceads/utils/download/c/a/b;->k:Ljava/lang/String;

    iput-object p3, p0, Lcom/migu/voiceads/utils/download/c/a/b;->j:Ljava/lang/String;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    iput-object p3, p0, Lcom/migu/voiceads/utils/download/c/a/b;->n:Ljava/lang/String;

    :goto_0
    iput-boolean p4, p0, Lcom/migu/voiceads/utils/download/c/a/b;->l:Z

    iput-wide v0, p0, Lcom/migu/voiceads/utils/download/c/a/b;->h:J

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/c/a/b;->g:Lcom/migu/voiceads/utils/download/c/a/a;

    const/16 v1, 0x1000

    invoke-virtual {v0, p1, p2, v1}, Lcom/migu/voiceads/utils/download/c/a/a;->a(Ljava/lang/String;[BI)V

    return-void

    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/migu/voiceads/utils/download/c/a/b;->n:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iput-object p3, p0, Lcom/migu/voiceads/utils/download/c/a/b;->n:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p3, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/migu/voiceads/utils/download/c/a/b;->n:Ljava/lang/String;

    goto :goto_0
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lcom/migu/voiceads/utils/download/c/a/b;->c:J

    return-wide v0
.end method

.method public c()V
    .locals 4

    iget-boolean v0, p0, Lcom/migu/voiceads/utils/download/c/a/b;->l:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/c/a/b;->j:Ljava/lang/String;

    :goto_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/migu/voiceads/utils/download/c/a/b;->k:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    iget-boolean v1, p0, Lcom/migu/voiceads/utils/download/c/a/b;->f:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/migu/voiceads/utils/download/c/a/b;->e:Lcom/migu/voiceads/utils/download/c/c/a;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/migu/voiceads/utils/download/c/a/b;->e:Lcom/migu/voiceads/utils/download/c/c/a;

    invoke-interface {v1, v0, p0}, Lcom/migu/voiceads/utils/download/c/c/a;->a(Ljava/lang/String;Lcom/migu/voiceads/utils/download/c/b/a;)V

    :cond_1
    invoke-direct {p0}, Lcom/migu/voiceads/utils/download/c/a/b;->g()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/migu/voiceads/utils/download/c/a/b;->k:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/migu/voiceads/utils/download/c/a/b;->k:Ljava/lang/String;

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/migu/voiceads/utils/download/c/a/b;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/migu/voiceads/utils/download/c/a/b;->d:I

    return v0
.end method

.method public e()V
    .locals 0

    invoke-direct {p0}, Lcom/migu/voiceads/utils/download/c/a/b;->g()V

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/migu/voiceads/utils/download/c/a/b;->q:Ljava/lang/String;

    return-object v0
.end method
