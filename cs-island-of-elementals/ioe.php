<?php
	$limit = 40; 
	$consulta = $SQL->query('SELECT `name`,`data`,`hora`, `itemid`, `boss` FROM `ioe` ORDER BY `id` DESC LIMIT 30;'); 
	$number_of_rows = 0; 
	$boss1 = "Island Fire";
	$boss2 = "Island Ice";
	$boss3 = "Island Earth";
	$boss4 = "Island Energy";
	$boss5 = "Island Death";

	$main_content .= '
		<center>
			<h2>Evento Island of Elementals</h2>
			</br>
			Os jogadores deverão se unir para conseguir vencer todos os bosses das ilhas e atingir a última com o mais temido. Apenas os bravos guerreiros conseguem chegar ao final, como prêmio eles recebem a experiência dos bosses e loot.
			</br>
			</br>
			<img src="http://i.imgur.com/F1VY5sc.png">
			</br>
			</br>
			<iframe style="border:1px solid black;"  width="560" height="315" src="https://www.youtube.com/embed/fAqjLOZyeUs" frameborder="0" allowfullscreen></iframe></br>
		</center>
		</br>
		<div class="TableContainer">
			<div class="CaptionContainer">
			<div class="CaptionInnerContainer">
				<span class="CaptionEdgeLeftTop" style="background-image:url(./layouts/tibiarl/images/content/box-frame-edge.gif)"></span>
				<span class="CaptionEdgeRightTop" style="background-image:url(./layouts/tibiarl/images/content/box-frame-edge.gif)"></span>
				<span class="CaptionBorderTop" style="background-image:url(./layouts/tibiarl/images/content/table-headline-border.gif)"></span>
				<span class="CaptionVerticalLeft" style="background-image:url(./layouts/tibiarl/images/content/box-frame-vertical.gif)"></span>
				<div class="Text">Informações</div>
				<span class="CaptionVerticalRight" style="background-image:url(./layouts/tibiarl/images/content/box-frame-vertical.gif)"></span>
				<span class="CaptionBorderBottom" style="background-image:url(./layouts/tibiarl/images/content/table-headline-border.gif)"></span>
				<span class="CaptionEdgeLeftBottom" style="background-image:url(./layouts/tibiarl/images/content/box-frame-edge.gif)"></span>
				<span class="CaptionEdgeRightBottom" style="background-image:url(./layouts/tibiarl/images/content/box-frame-edge.gif)"></span>
			</div>
		</div>

		<table class="Table1" cellpadding="0" cellspacing="0">
		<tbody>
		<tr>
			<td>
				<div class="InnerTableContainer">
					<table width="100%">
						<tbody>
						<tr style="background-color:#af2126;">
							<td class="LabelV150"><b>
								<font color="white">Objetivo</font></b></td>
						</tr>
						<tr style="background-color:'.$config['site']['lightborder'].';">
							<td>
								<p>Os jogadores deverão unir suas forças para conseguirem atravessar todas as 5 ilhas dos elementos. Para isto deverão matar todos os bosses, que ficam mais forte a cada nível.</p>
							</td>
						</tr>

						<tr style="background-color:#af2126;">
							<td class="LabelV150"><b><font color="white">Bosses</font></b></td>
						</tr>

						<TABLE WIDTH=100% BORDER=0 CELLPADDING=5 CELLSPACING=3>
							<tr bgcolor=\'#F1E0C6\'>
										<td width=\'20%\' class=\'tr_info_sec\' p align="center">Island Fire</br><img src="http://www.tibiawiki.com.br/images/7/75/Demon.gif" border="0"></td>
										<td width=\'20%\' class=\'tr_info_sec\' p align="center">Island Ice</br><img src="http://www.tibiawiki.com.br/images/e/e9/Yeti.gif" border="0"></td>
										<td width=\'20%\' class=\'tr_info_sec\' p align="center">Island Earth</br><img src="http://www.tibiawiki.com.br/images/b/b4/Massive_Earth_Elemental.gif" border="0"></td>
										<td width=\'20%\' class=\'tr_info_sec\' p align="center">Island Energy</br><img src="http://www.tibiawiki.com.br/images/8/89/Worker_Golem.gif" border="0"></td>
										<td width=\'20%\' class=\'tr_info_sec\' p align="center">Island Death</br><img src="http://www.tibiawiki.com.br/images/6/68/Ushuriel.gif" border="0"></td>
						</tr>
						</table>
						<TABLE WIDTH=100%>
						<tr bgcolor=\'#F1E0C6\'>
								<td>
								<center>
								<b>Dificuldade:</b>
								</center>
								</td>
						</tr>
						</table>
						<TABLE WIDTH=100% BORDER=0 CELLPADDING=5 CELLSPACING=3>
						<tr bgcolor=\'#F1E0C6\'>
										<td width=\'20%\' class=\'tr_info_sec\' p align="center">
											<img src="http://www.tibiawiki.com.br/images/f/ff/Achievement.gif" border="0">
											</td>
										<td width=\'20%\' class=\'tr_info_sec\' p align="center">
											<img src="http://www.tibiawiki.com.br/images/f/ff/Achievement.gif" border="0">
											<img src="http://www.tibiawiki.com.br/images/f/ff/Achievement.gif" border="0">
										</td>
										<td width=\'20%\' class=\'tr_info_sec\' p align="center">
											<img src="http://www.tibiawiki.com.br/images/f/ff/Achievement.gif" border="0">
											<img src="http://www.tibiawiki.com.br/images/f/ff/Achievement.gif" border="0">
											<img src="http://www.tibiawiki.com.br/images/f/ff/Achievement.gif" border="0">
										</td>
										<td width=\'20%\' class=\'tr_info_sec\' p align="center">
											<img src="http://www.tibiawiki.com.br/images/f/ff/Achievement.gif" border="0">
											<img src="http://www.tibiawiki.com.br/images/f/ff/Achievement.gif" border="0">
											<img src="http://www.tibiawiki.com.br/images/f/ff/Achievement.gif" border="0">
											<img src="http://www.tibiawiki.com.br/images/f/ff/Achievement.gif" border="0">
										</td>
										<td width=\'20%\' class=\'tr_info_sec\' p align="center">
											<img src="http://www.tibiawiki.com.br/images/f/ff/Achievement.gif" border="0">
											<img src="http://www.tibiawiki.com.br/images/f/ff/Achievement.gif" border="0">
											<img src="http://www.tibiawiki.com.br/images/f/ff/Achievement.gif" border="0">
											<img src="http://www.tibiawiki.com.br/images/f/ff/Achievement.gif" border="0">
											<img src="http://www.tibiawiki.com.br/images/f/ff/Achievement.gif" border="0">
										</td>
						</tr>
						</table>
						<table width="100%">
						<tr style="background-color:#af2126;">
							<td class="LabelV150"><b><font color="white">Danos por morte</font></b></td>
						</tr>
						<tr style="background-color:'.$config['site']['lightborder'].';">
							<td>
								<p>As ilhas são todas NO-PVP, ou seja não é possível morrer para jogador. Porém, por ser um evento que envolve monstros, a penalidade para este tipo de morte é valida. </p>
							</td>
						</tr>

						<tr style="background-color:#af2126;">
							<td class="LabelV150"><b><font color="white">Prêmios</font></b></td>
						</tr>
						<tr style="background-color:'.$config['site']['lightborder'].';">
							<td>
								<p> O time vencedor recebe items aleatorios como prêmio, além dos loots dos bosses e bônus experiência durante um certo tempo. </p>
							</td>
						</tr>

			</tbody></table>
				</div>
			</td>
		</tr>
	</tbody></table>
		</div>
		</br>
		</br>



		<div class="TableContainer">
			<div class="CaptionContainer">
			<div class="CaptionInnerContainer">
				<span class="CaptionEdgeLeftTop" style="background-image:url(./layouts/tibiarl/images/content/box-frame-edge.gif)"></span>
				<span class="CaptionEdgeRightTop" style="background-image:url(./layouts/tibiarl/images/content/box-frame-edge.gif)"></span>
				<span class="CaptionBorderTop" style="background-image:url(./layouts/tibiarl/images/content/table-headline-border.gif)"></span>
				<span class="CaptionVerticalLeft" style="background-image:url(./layouts/tibiarl/images/content/box-frame-vertical.gif)"></span>
				<div class="Text">Relatório das Batalhas</div>
				<span class="CaptionVerticalRight" style="background-image:url(./layouts/tibiarl/images/content/box-frame-vertical.gif)"></span>
				<span class="CaptionBorderBottom" style="background-image:url(./layouts/tibiarl/images/content/table-headline-border.gif)"></span>
				<span class="CaptionEdgeLeftBottom" style="background-image:url(./layouts/tibiarl/images/content/box-frame-edge.gif)"></span>
				<span class="CaptionEdgeRightBottom" style="background-image:url(./layouts/tibiarl/images/content/box-frame-edge.gif)"></span>
			</div>
		</div><table class="Table1" cellpadding="0" cellspacing="0">

		<tbody><tr>
			<td>
				<div class="InnerTableContainer">
					<table width="100%">
						<tbody>
						<tr style="background-color:#af2126;">
							<td class="LabelV150" width=\'25%\'><b><font color="white"> <center>Boss</font></b></center></td>
							<td class="LabelV150"><b><font color="white"><center>Últimos prêmios</center></font></b></td>
						</tr>
	';

	foreach($consulta as $info) { 
	if(!is_int($number_of_rows / 2)) { $bgcolor = $config['site']['darkborder']; } else { $bgcolor = $config['site']['lightborder']; }
		$number_of_rows++;
	$main_content .= '
	<tr bgcolor="'.$config['site']['lightborder'].'">
		<td></br>
			<center>
			';
			if ($info['boss'] == 1){
			$main_content .= '
			'.$boss1.'</br>
			<img src="http://www.tibiawiki.com.br/images/7/75/Demon.gif" border="0">';
			}
			if ($info['boss'] == 2){
				$main_content .= '
			'.$boss2.'</br>
			<img src="http://www.tibiawiki.com.br/images/e/e9/Yeti.gif" border="0">';
			}
			if ($info['boss'] == 3){
				$main_content .= '
			'.$boss3.'</br>
			<img src="http://www.tibiawiki.com.br/images/b/b4/Massive_Earth_Elemental.gif" border="0">';
			}
			if ($info['boss'] == 4){
				$main_content .= '
			'.$boss4.'</br>
			<img src="http://www.tibiawiki.com.br/images/8/89/Worker_Golem.gif" border="0">';
			}
			if ($info['boss'] == 5){
				$main_content .= '
			'.$boss5.'</br>
			<img src="http://www.tibiawiki.com.br/images/6/68/Ushuriel.gif" border="0">';
			}

			$main_content .= '
			</center>
		</td>
		<td></br>
			<center>
			<a href="index.php?subtopic=characters&name='.urlencode($info['name']).'">
			<b> '.$info['name'].' </b></a> recebeu
			<img style="width:30px;height:30px;" src="images/items/' . $info['itemid'] . '.gif"/> 
			</br>
			' . $info['data'] . ' - ' . $info['hora'] . '
			</center>
		</td>
	</tr>
		';
	}
	$main_content .= '
	</tbody></table>
				</div>
			</td>
		</tr>
	</tbody></table>
</div>
	</br>
	<center>Desenvolvido por <a href="http://chaitosoft.com/">ChaitoSoft.com</a>.</center>
	';

?>
