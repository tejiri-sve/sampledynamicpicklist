// グリッドコンポーネントのアプリケーションビルダーのプロパティ用の動的なオブジェクト選択リスト部品
global class DynamicObjectPickList extends VisualEditor.DynamicPickList{

    // 未選択用の DataRow
    private static final VisualEditor.DataRow EMPTY_DATAROW =  new VisualEditor.DataRow('', null);
    // メンバー変数
    private VisualEditor.DesignTimePageContext context; // Lightning コンポーネントが配置されたページの情報
    private VisualEditor.DynamicPickListRows dynamicPickListRows; // 表示する選択肢

    // デフォルト値の設定
    global override VisualEditor.DataRow getDefaultValue(){
        return EMPTY_DATAROW;
    }

    // 選択リストを返す
    global override VisualEditor.DynamicPickListRows getValues() {
        return this.dynamicPickListRows;
    }
    // コンストラクタ
    global DynamicObjectPickList(VisualEditor.DesignTimePageContext context) {
        this.context = context;

        // 選択リストを初期化する
        this.dynamicPickListRows = new VisualEditor.DynamicPickListRows();
        this.dynamicPickListRows.addRow(new VisualEditor.DataRow('AAA' , 'AAA'));
        this.dynamicPickListRows.addRow(new VisualEditor.DataRow('BBB' , 'BBB'));
        this.dynamicPickListRows.addRow(new VisualEditor.DataRow('CCC' , 'CCC'));
    }
}