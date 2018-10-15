.class Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog$ListItemAdapter;
.super Ljava/lang/Object;
.source "ContactSelectDialog.java"

# interfaces
.implements Ltf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ListItemAdapter"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field flagChecked:Z

.field location:Ljava/lang/String;

.field showNumber:Landroid/text/SpannableString;

.field final synthetic this$0:Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 177
    const-class v0, Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog$ListItemAdapter;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog;Lcom/iflytek/base/contacts/entities/ContactItem;)V
    .locals 3
    .param p2, "item"    # Lcom/iflytek/base/contacts/entities/ContactItem;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog$ListItemAdapter;->this$0:Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    invoke-direct {p0, p2}, Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog$ListItemAdapter;->genShowNumber(Lcom/iflytek/base/contacts/entities/ContactItem;)Landroid/text/SpannableString;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog$ListItemAdapter;->showNumber:Landroid/text/SpannableString;

    .line 184
    invoke-direct {p0, p2}, Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog$ListItemAdapter;->genLocation(Lcom/iflytek/base/contacts/entities/ContactItem;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog$ListItemAdapter;->location:Ljava/lang/String;

    .line 185
    invoke-direct {p0, p2}, Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog$ListItemAdapter;->genCheckedFlag(Lcom/iflytek/base/contacts/entities/ContactItem;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog$ListItemAdapter;->flagChecked:Z

    .line 187
    invoke-static {}, Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "flagChecked : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog$ListItemAdapter;->flagChecked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " | content : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    return-void
.end method

.method private genCheckedFlag(Lcom/iflytek/base/contacts/entities/ContactItem;)Z
    .locals 4
    .param p1, "item"    # Lcom/iflytek/base/contacts/entities/ContactItem;

    .prologue
    .line 265
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/iflytek/base/contacts/entities/ContactItem;->e()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 267
    invoke-virtual {p1}, Lcom/iflytek/base/contacts/entities/ContactItem;->e()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "&"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 268
    .local v0, "number":Ljava/lang/String;
    const-string/jumbo v1, "^"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 269
    const-string/jumbo v1, "`"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 270
    const-string/jumbo v1, " "

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 272
    invoke-static {}, Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 273
    const/4 v1, 0x1

    .line 276
    .end local v0    # "number":Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private genLocation(Lcom/iflytek/base/contacts/entities/ContactItem;)Ljava/lang/String;
    .locals 8
    .param p1, "item"    # Lcom/iflytek/base/contacts/entities/ContactItem;

    .prologue
    const/4 v6, 0x0

    .line 235
    sget-boolean v7, Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog$ListItemAdapter;->$assertionsDisabled:Z

    if-nez v7, :cond_0

    if-nez p1, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 236
    :cond_0
    const-string/jumbo v1, ""

    .line 238
    .local v1, "location":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Lcom/iflytek/base/contacts/entities/ContactItem;->i()Ljava/lang/String;

    move-result-object v5

    .line 240
    .local v5, "tagText":Ljava/lang/String;
    const-string/jumbo v7, "`"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 241
    .local v4, "splitTexts":[Ljava/lang/String;
    const/4 v7, 0x0

    aget-object v1, v4, v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    .end local v4    # "splitTexts":[Ljava/lang/String;
    .end local v5    # "tagText":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1}, Lcom/iflytek/base/contacts/entities/ContactItem;->e()Ljava/lang/String;

    move-result-object v3

    .line 247
    .local v3, "phoneNumber":Ljava/lang/String;
    if-eqz v3, :cond_4

    const-string/jumbo v7, ""

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-static {v3}, Lcom/iflytek/viafly/util/PhoneNumberUtil;->d(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 248
    const-string/jumbo v6, "^"

    const-string/jumbo v7, ""

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 249
    .local v2, "number":Ljava/lang/String;
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v2}, Lhd;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 250
    if-eqz v1, :cond_1

    const-string/jumbo v6, "null"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 251
    :cond_1
    const-string/jumbo v1, "\u56fa\u8bdd"

    :cond_2
    move-object v6, v1

    .line 260
    .end local v2    # "number":Ljava/lang/String;
    :cond_3
    :goto_1
    return-object v6

    .line 242
    .end local v3    # "phoneNumber":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 243
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 254
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "phoneNumber":Ljava/lang/String;
    :cond_4
    if-eqz v3, :cond_5

    const-string/jumbo v7, ""

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 257
    :cond_5
    if-eqz v1, :cond_3

    const-string/jumbo v7, ""

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    move-object v6, v1

    .line 258
    goto :goto_1
.end method

.method private genShowNumber(Lcom/iflytek/base/contacts/entities/ContactItem;)Landroid/text/SpannableString;
    .locals 20
    .param p1, "item"    # Lcom/iflytek/base/contacts/entities/ContactItem;

    .prologue
    .line 191
    sget-boolean v17, Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog$ListItemAdapter;->$assertionsDisabled:Z

    if-nez v17, :cond_0

    if-nez p1, :cond_0

    new-instance v17, Ljava/lang/AssertionError;

    invoke-direct/range {v17 .. v17}, Ljava/lang/AssertionError;-><init>()V

    throw v17

    .line 193
    :cond_0
    const/4 v12, 0x0

    .line 195
    .local v12, "spannableString":Landroid/text/SpannableString;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/iflytek/base/contacts/entities/ContactItem;->i()Ljava/lang/String;

    move-result-object v15

    .line 197
    .local v15, "tagText":Ljava/lang/String;
    const-string/jumbo v17, "`"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 198
    .local v14, "splitTexts":[Ljava/lang/String;
    const/16 v17, 0x1

    aget-object v17, v14, v17

    const/16 v18, 0x26

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 199
    .local v5, "firstHighLightPosition":I
    const/16 v17, 0x1

    aget-object v17, v14, v17

    const/16 v18, 0x26

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    .line 200
    .local v7, "lastHighLightPosition":I
    if-nez v5, :cond_1

    const/16 v17, 0x1

    aget-object v17, v14, v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-ne v0, v7, :cond_1

    .line 201
    const/16 v17, 0x1

    aget-object v17, v14, v17

    const-string/jumbo v18, "^"

    const-string/jumbo v19, ""

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v16

    .line 202
    .local v16, "tempStr":Ljava/lang/String;
    const-string/jumbo v17, "&"

    const-string/jumbo v18, ""

    invoke-virtual/range {v16 .. v18}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v16

    .line 203
    new-instance v13, Landroid/text/SpannableString;

    move-object/from16 v0, v16

    invoke-direct {v13, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    .end local v12    # "spannableString":Landroid/text/SpannableString;
    .local v13, "spannableString":Landroid/text/SpannableString;
    :try_start_1
    new-instance v17, Landroid/text/style/StyleSpan;

    const/16 v18, 0x1

    invoke-direct/range {v17 .. v18}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/16 v18, 0x22

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v13, v0, v5, v7, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v12, v13

    .line 231
    .end local v5    # "firstHighLightPosition":I
    .end local v7    # "lastHighLightPosition":I
    .end local v13    # "spannableString":Landroid/text/SpannableString;
    .end local v14    # "splitTexts":[Ljava/lang/String;
    .end local v15    # "tagText":Ljava/lang/String;
    .end local v16    # "tempStr":Ljava/lang/String;
    .restart local v12    # "spannableString":Landroid/text/SpannableString;
    :goto_0
    return-object v12

    .line 206
    .restart local v5    # "firstHighLightPosition":I
    .restart local v7    # "lastHighLightPosition":I
    .restart local v14    # "splitTexts":[Ljava/lang/String;
    .restart local v15    # "tagText":Ljava/lang/String;
    :cond_1
    const/16 v17, 0x1

    :try_start_2
    aget-object v17, v14, v17

    const-string/jumbo v18, "\\^"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 207
    .local v10, "numbers":[Ljava/lang/String;
    const/16 v17, 0x1

    aget-object v17, v14, v17

    const-string/jumbo v18, "^"

    const-string/jumbo v19, " "

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v16

    .line 208
    .restart local v16    # "tempStr":Ljava/lang/String;
    const-string/jumbo v11, ""

    .line 209
    .local v11, "postfixNumber":Ljava/lang/String;
    array-length v0, v10

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 210
    const/16 v17, 0x1

    aget-object v11, v10, v17

    .line 215
    :goto_1
    const/16 v17, 0x26

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 216
    .local v6, "firstIndex":I
    const/16 v17, 0x26

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    .line 217
    .local v8, "lastIndex":I
    if-eq v6, v8, :cond_3

    .line 218
    new-instance v13, Landroid/text/SpannableString;

    const-string/jumbo v17, "&"

    const-string/jumbo v18, " "

    invoke-virtual/range {v16 .. v18}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v13, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 219
    .end local v12    # "spannableString":Landroid/text/SpannableString;
    .restart local v13    # "spannableString":Landroid/text/SpannableString;
    :try_start_3
    new-instance v17, Landroid/text/style/StyleSpan;

    const/16 v18, 0x1

    invoke-direct/range {v17 .. v18}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/16 v18, 0x22

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v13, v0, v6, v8, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object v12, v13

    .line 224
    .end local v13    # "spannableString":Landroid/text/SpannableString;
    .restart local v12    # "spannableString":Landroid/text/SpannableString;
    :goto_2
    :try_start_4
    invoke-virtual {v12}, Landroid/text/SpannableString;->length()I

    move-result v9

    .line 225
    .local v9, "length":I
    invoke-static {}, Lcom/iflytek/base/skin/ThemeManager;->getInstance()Lcom/iflytek/base/skin/ThemeManager;

    move-result-object v17

    const-string/jumbo v18, "contact_select_dialog_title_text"

    sget-object v19, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual/range {v17 .. v19}, Lcom/iflytek/base/skin/ThemeManager;->getColor(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)I

    move-result v3

    .line 226
    .local v3, "color":I
    new-instance v17, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v18, 0x0

    const/16 v19, 0x21

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v12, v0, v1, v9, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 228
    .end local v3    # "color":I
    .end local v5    # "firstHighLightPosition":I
    .end local v6    # "firstIndex":I
    .end local v7    # "lastHighLightPosition":I
    .end local v8    # "lastIndex":I
    .end local v9    # "length":I
    .end local v10    # "numbers":[Ljava/lang/String;
    .end local v11    # "postfixNumber":Ljava/lang/String;
    .end local v14    # "splitTexts":[Ljava/lang/String;
    .end local v15    # "tagText":Ljava/lang/String;
    .end local v16    # "tempStr":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 229
    .local v4, "e":Ljava/lang/Exception;
    :goto_3
    invoke-static {}, Lcom/iflytek/viafly/ui/dialog/ContactSelectDialog;->access$000()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, ""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 212
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v5    # "firstHighLightPosition":I
    .restart local v7    # "lastHighLightPosition":I
    .restart local v10    # "numbers":[Ljava/lang/String;
    .restart local v11    # "postfixNumber":Ljava/lang/String;
    .restart local v14    # "splitTexts":[Ljava/lang/String;
    .restart local v15    # "tagText":Ljava/lang/String;
    .restart local v16    # "tempStr":Ljava/lang/String;
    :cond_2
    const/16 v17, 0x0

    :try_start_5
    aget-object v11, v10, v17

    goto/16 :goto_1

    .line 222
    .restart local v6    # "firstIndex":I
    .restart local v8    # "lastIndex":I
    :cond_3
    new-instance v13, Landroid/text/SpannableString;

    move-object/from16 v0, v16

    invoke-direct {v13, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .end local v12    # "spannableString":Landroid/text/SpannableString;
    .restart local v13    # "spannableString":Landroid/text/SpannableString;
    move-object v12, v13

    .end local v13    # "spannableString":Landroid/text/SpannableString;
    .restart local v12    # "spannableString":Landroid/text/SpannableString;
    goto :goto_2

    .line 228
    .end local v6    # "firstIndex":I
    .end local v8    # "lastIndex":I
    .end local v10    # "numbers":[Ljava/lang/String;
    .end local v11    # "postfixNumber":Ljava/lang/String;
    .end local v12    # "spannableString":Landroid/text/SpannableString;
    .restart local v13    # "spannableString":Landroid/text/SpannableString;
    :catch_1
    move-exception v4

    move-object v12, v13

    .end local v13    # "spannableString":Landroid/text/SpannableString;
    .restart local v12    # "spannableString":Landroid/text/SpannableString;
    goto :goto_3
.end method
